import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/collections/linked_accounts_collection.dart';
import 'package:mwd_concessionaire_portal/core/services/api_endpoint_service.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/profile.dart';

import '../../../../core/exceptions/authentication_exception.dart';
import 'profile_data_source.dart';

/// This class is responsible for retrieving data from remote
/// sources like REST APIs, Amplify, Firebase etc.
class ProfileRemoteDataSourceImpl extends ProfileDataSource {
  LinkedAccountsCollection collection =
      GetIt.instance<LinkedAccountsCollection>();

  @override
  Future<List<Account>> getLinkedAccounts() async {
    List<Account> accounts = [];

    //await collection.clear();

    final response = await APIEndpointService.profile(
      ProfileEndpoint.accounts,
      null,
      onSuccess: (data) async {},
      onError: (dynamicError) {
        throw ServerException(dynamicError);
      },
    );

    final rawData = response.body['data']['data'] as List;

    ///Get raw from response and convert to Model
    accounts = rawData.map((accountRaw) {
      return Account.fromJson(accountRaw);
    }).toList();

    Profile? profile = await collection.read();

    if (profile != null) {
      ///Get raw from local and convert to Model
      final localAccounts = profile.accounts.map((accountRaw) {
        return Account.fromJson(Map<String, dynamic>.from(accountRaw));
      }).toList();

      final accountsRaw = accounts.map((account) {
        final filteredLocalAccount = localAccounts.where((e) {
          return e.accountNumber == account.accountNumber;
        }).toList();

        String alias = '';
        bool isDefault = false;
        if (filteredLocalAccount.isNotEmpty) {
          alias = filteredLocalAccount.first.alias;
          isDefault = filteredLocalAccount.first.isDefault;
        }

        return account.copyWith(alias: alias, isDefault: isDefault);
      }).toList();

      final finalLocalAccounts = accountsRaw.map((account) {
        return account.toJson();
      }).toList();

      accounts = accountsRaw;

      profile = profile.copyWith(accounts: finalLocalAccounts);
      await collection.update(profile);
    } else {
      profile = const Profile();
      await collection.create(profile);

      List<Account> initialLoadedAccounts = rawData.map((e) {
        return Account.fromJson(Map<String, dynamic>.from(e));
      }).toList();

      List<Account> defaultAccounts =
          initialLoadedAccounts.where((e) => e.isDefault).toList();
      if (defaultAccounts.isEmpty) {
        if (initialLoadedAccounts.isNotEmpty) {
          Account defaultAccount = initialLoadedAccounts.first.copyWith(
            isDefault: true,
            alias: 'Home'
          );

          for(int i = 0; i < initialLoadedAccounts.length; i++){
            if(i == 0){
              initialLoadedAccounts[i] = defaultAccount;
            }else{
              Account otherAccount = initialLoadedAccounts[i].copyWith(
                  alias: 'Account $i'
              );
              initialLoadedAccounts[i] = otherAccount;
            }
          }

        }
      }

      final accountsRaw = initialLoadedAccounts.map((e) {
        return e.toJson();
      }).toList();

      accounts = initialLoadedAccounts;

      profile = profile.copyWith(accounts: accountsRaw);
      await collection.update(profile);
    }

    return accounts;
  }

  @override
  Future<Account> linkNewAccount(LinkAccountParams params) async {
    Account account = Account();

    final response = await APIEndpointService.profile(
        ProfileEndpoint.linkNewAccount, params, onError: (dynamicError) {
      throw ServerException(dynamicError);
    });

    final responseRaw = response.body['data'];

    if (responseRaw == null) {
      throw ServerException(
          const DynamicError(message: 'Invalid account number or bill number'));
    }

    Profile? profile = await collection.read();
    List<Account> localAccounts = profile!.accounts.map((accountRaw) {
      return Account.fromJson(Map<String, dynamic>.from(accountRaw));
    }).toList();

    localAccounts.add(Account(
        alias: params.alias,
        accountNumber: params.accountNo,
        isDefault: localAccounts.isEmpty ? true : false));

    final accountsRaw = localAccounts.map((e) {
      return e.toJson();
    }).toList();

    profile = profile.copyWith(accounts: accountsRaw);
    await collection.update(profile);

    return account;
  }

  @override
  Future<bool> setDefaultAccount(String accountNo) async {
    Profile? profile = await collection.read();
    List<Account> accounts = profile!.accounts.map((e) {
      Account account = Account.fromJson(Map<String, dynamic>.from(e));
      return account.copyWith(isDefault: false);
    }).toList();

    final index = accounts.indexWhere((e) => e.accountNumber == accountNo);
    accounts[index] = accounts[index].copyWith(isDefault: true);

    final accountsRaw = accounts.map((e) {
      return e.toJson();
    }).toList();

    profile = profile.copyWith(accounts: accountsRaw);
    await collection.update(profile);

    return true;
  }

  @override
  Future<bool> saveAccountAlias(Account account) async {
    Profile? profile = await collection.read();

    List<Account> localAccounts = profile!.accounts.map((e) {
      Account account = Account.fromJson(Map<String, dynamic>.from(e));
      return account;
    }).toList();

    final index = localAccounts
        .indexWhere((e) => e.accountNumber == account.accountNumber);
    localAccounts[index] = localAccounts[index].copyWith(alias: account.alias);

    final accountsRaw = localAccounts.map((e) {
      return e.toJson();
    }).toList();

    profile = profile.copyWith(accounts: accountsRaw);
    await collection.update(profile);

    return true;
  }
}
