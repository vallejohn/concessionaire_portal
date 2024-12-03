import '../../data/data_sources/billing_information_data_source.dart';

abstract class BillingInformationRepository {
  final BillingInformationDataSource dataSource;

  BillingInformationRepository({required this.dataSource});
}
