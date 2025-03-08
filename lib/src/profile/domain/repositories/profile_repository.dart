import 'package:dartz/dartz.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

import '../../../../core/exceptions/failure.dart';
import '../../data/data_sources/profile_data_source.dart';

abstract class ProfileRepository {
  final ProfileDataSource dataSource;

  ProfileRepository({required this.dataSource});

  Future<Either<Failure, List<Account>>> getLinkedAccounts();
  Future<Either<Failure, bool>> linkNewAccount(LinkAccountParams params);
}
