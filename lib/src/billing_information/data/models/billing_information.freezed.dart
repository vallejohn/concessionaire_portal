// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillingInformation _$BillingInformationFromJson(Map<String, dynamic> json) {
  return _BillingInformation.fromJson(json);
}

/// @nodoc
mixin _$BillingInformation {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String get accountNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_no')
  String get billNo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'meter_no')
  String get meterNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_type')
  String get classType => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_month')
  String get billMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'reading_date')
  String get readingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'disconnection_date')
  String get disconnectionDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_reading')
  int get previousReading => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_reading')
  int get currentReading => throw _privateConstructorUsedError;
  int get consumption => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_charge')
  double get currentCharge => throw _privateConstructorUsedError;
  double get arrears => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  double get mrrf => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'meter_reader_name')
  String get meterReaderName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_status')
  String get resultStatus => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BillingInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingInformationCopyWith<BillingInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingInformationCopyWith<$Res> {
  factory $BillingInformationCopyWith(
          BillingInformation value, $Res Function(BillingInformation) then) =
      _$BillingInformationCopyWithImpl<$Res, BillingInformation>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'account_number') String accountNo,
      @JsonKey(name: 'bill_no') String billNo,
      String name,
      String address,
      @JsonKey(name: 'meter_no') String meterNo,
      @JsonKey(name: 'class_type') String classType,
      @JsonKey(name: 'bill_month') String billMonth,
      @JsonKey(name: 'reading_date') String readingDate,
      @JsonKey(name: 'due_date') String dueDate,
      @JsonKey(name: 'disconnection_date') String disconnectionDate,
      @JsonKey(name: 'previous_reading') int previousReading,
      @JsonKey(name: 'current_reading') int currentReading,
      int consumption,
      @JsonKey(name: 'current_charge') double currentCharge,
      double arrears,
      double discount,
      double mrrf,
      @JsonKey(name: 'total_amount') double totalAmount,
      @JsonKey(name: 'meter_reader_name') String meterReaderName,
      String status,
      @JsonKey(name: 'result_status') String resultStatus,
      String result,
      @JsonKey(name: 'deleted_at') String deletedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$BillingInformationCopyWithImpl<$Res, $Val extends BillingInformation>
    implements $BillingInformationCopyWith<$Res> {
  _$BillingInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountNo = null,
    Object? billNo = null,
    Object? name = null,
    Object? address = null,
    Object? meterNo = null,
    Object? classType = null,
    Object? billMonth = null,
    Object? readingDate = null,
    Object? dueDate = null,
    Object? disconnectionDate = null,
    Object? previousReading = null,
    Object? currentReading = null,
    Object? consumption = null,
    Object? currentCharge = null,
    Object? arrears = null,
    Object? discount = null,
    Object? mrrf = null,
    Object? totalAmount = null,
    Object? meterReaderName = null,
    Object? status = null,
    Object? resultStatus = null,
    Object? result = null,
    Object? deletedAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      billNo: null == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      meterNo: null == meterNo
          ? _value.meterNo
          : meterNo // ignore: cast_nullable_to_non_nullable
              as String,
      classType: null == classType
          ? _value.classType
          : classType // ignore: cast_nullable_to_non_nullable
              as String,
      billMonth: null == billMonth
          ? _value.billMonth
          : billMonth // ignore: cast_nullable_to_non_nullable
              as String,
      readingDate: null == readingDate
          ? _value.readingDate
          : readingDate // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      disconnectionDate: null == disconnectionDate
          ? _value.disconnectionDate
          : disconnectionDate // ignore: cast_nullable_to_non_nullable
              as String,
      previousReading: null == previousReading
          ? _value.previousReading
          : previousReading // ignore: cast_nullable_to_non_nullable
              as int,
      currentReading: null == currentReading
          ? _value.currentReading
          : currentReading // ignore: cast_nullable_to_non_nullable
              as int,
      consumption: null == consumption
          ? _value.consumption
          : consumption // ignore: cast_nullable_to_non_nullable
              as int,
      currentCharge: null == currentCharge
          ? _value.currentCharge
          : currentCharge // ignore: cast_nullable_to_non_nullable
              as double,
      arrears: null == arrears
          ? _value.arrears
          : arrears // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      mrrf: null == mrrf
          ? _value.mrrf
          : mrrf // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      meterReaderName: null == meterReaderName
          ? _value.meterReaderName
          : meterReaderName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      resultStatus: null == resultStatus
          ? _value.resultStatus
          : resultStatus // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingInformationImplCopyWith<$Res>
    implements $BillingInformationCopyWith<$Res> {
  factory _$$BillingInformationImplCopyWith(_$BillingInformationImpl value,
          $Res Function(_$BillingInformationImpl) then) =
      __$$BillingInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'account_number') String accountNo,
      @JsonKey(name: 'bill_no') String billNo,
      String name,
      String address,
      @JsonKey(name: 'meter_no') String meterNo,
      @JsonKey(name: 'class_type') String classType,
      @JsonKey(name: 'bill_month') String billMonth,
      @JsonKey(name: 'reading_date') String readingDate,
      @JsonKey(name: 'due_date') String dueDate,
      @JsonKey(name: 'disconnection_date') String disconnectionDate,
      @JsonKey(name: 'previous_reading') int previousReading,
      @JsonKey(name: 'current_reading') int currentReading,
      int consumption,
      @JsonKey(name: 'current_charge') double currentCharge,
      double arrears,
      double discount,
      double mrrf,
      @JsonKey(name: 'total_amount') double totalAmount,
      @JsonKey(name: 'meter_reader_name') String meterReaderName,
      String status,
      @JsonKey(name: 'result_status') String resultStatus,
      String result,
      @JsonKey(name: 'deleted_at') String deletedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$BillingInformationImplCopyWithImpl<$Res>
    extends _$BillingInformationCopyWithImpl<$Res, _$BillingInformationImpl>
    implements _$$BillingInformationImplCopyWith<$Res> {
  __$$BillingInformationImplCopyWithImpl(_$BillingInformationImpl _value,
      $Res Function(_$BillingInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountNo = null,
    Object? billNo = null,
    Object? name = null,
    Object? address = null,
    Object? meterNo = null,
    Object? classType = null,
    Object? billMonth = null,
    Object? readingDate = null,
    Object? dueDate = null,
    Object? disconnectionDate = null,
    Object? previousReading = null,
    Object? currentReading = null,
    Object? consumption = null,
    Object? currentCharge = null,
    Object? arrears = null,
    Object? discount = null,
    Object? mrrf = null,
    Object? totalAmount = null,
    Object? meterReaderName = null,
    Object? status = null,
    Object? resultStatus = null,
    Object? result = null,
    Object? deletedAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$BillingInformationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      billNo: null == billNo
          ? _value.billNo
          : billNo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      meterNo: null == meterNo
          ? _value.meterNo
          : meterNo // ignore: cast_nullable_to_non_nullable
              as String,
      classType: null == classType
          ? _value.classType
          : classType // ignore: cast_nullable_to_non_nullable
              as String,
      billMonth: null == billMonth
          ? _value.billMonth
          : billMonth // ignore: cast_nullable_to_non_nullable
              as String,
      readingDate: null == readingDate
          ? _value.readingDate
          : readingDate // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      disconnectionDate: null == disconnectionDate
          ? _value.disconnectionDate
          : disconnectionDate // ignore: cast_nullable_to_non_nullable
              as String,
      previousReading: null == previousReading
          ? _value.previousReading
          : previousReading // ignore: cast_nullable_to_non_nullable
              as int,
      currentReading: null == currentReading
          ? _value.currentReading
          : currentReading // ignore: cast_nullable_to_non_nullable
              as int,
      consumption: null == consumption
          ? _value.consumption
          : consumption // ignore: cast_nullable_to_non_nullable
              as int,
      currentCharge: null == currentCharge
          ? _value.currentCharge
          : currentCharge // ignore: cast_nullable_to_non_nullable
              as double,
      arrears: null == arrears
          ? _value.arrears
          : arrears // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      mrrf: null == mrrf
          ? _value.mrrf
          : mrrf // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      meterReaderName: null == meterReaderName
          ? _value.meterReaderName
          : meterReaderName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      resultStatus: null == resultStatus
          ? _value.resultStatus
          : resultStatus // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingInformationImpl implements _BillingInformation {
  const _$BillingInformationImpl(
      {this.id = 0,
      @JsonKey(name: 'account_number') this.accountNo = '',
      @JsonKey(name: 'bill_no') this.billNo = '',
      this.name = '',
      this.address = '',
      @JsonKey(name: 'meter_no') this.meterNo = '',
      @JsonKey(name: 'class_type') this.classType = '',
      @JsonKey(name: 'bill_month') this.billMonth = '',
      @JsonKey(name: 'reading_date') this.readingDate = '',
      @JsonKey(name: 'due_date') this.dueDate = '',
      @JsonKey(name: 'disconnection_date') this.disconnectionDate = '',
      @JsonKey(name: 'previous_reading') this.previousReading = 0,
      @JsonKey(name: 'current_reading') this.currentReading = 0,
      this.consumption = 0,
      @JsonKey(name: 'current_charge') this.currentCharge = 0,
      this.arrears = 0,
      this.discount = 0,
      this.mrrf = 0,
      @JsonKey(name: 'total_amount') this.totalAmount = 0,
      @JsonKey(name: 'meter_reader_name') this.meterReaderName = '',
      this.status = '',
      @JsonKey(name: 'result_status') this.resultStatus = '',
      this.result = '',
      @JsonKey(name: 'deleted_at') this.deletedAt = '',
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'updated_at') this.updatedAt = ''});

  factory _$BillingInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingInformationImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'account_number')
  final String accountNo;
  @override
  @JsonKey(name: 'bill_no')
  final String billNo;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey(name: 'meter_no')
  final String meterNo;
  @override
  @JsonKey(name: 'class_type')
  final String classType;
  @override
  @JsonKey(name: 'bill_month')
  final String billMonth;
  @override
  @JsonKey(name: 'reading_date')
  final String readingDate;
  @override
  @JsonKey(name: 'due_date')
  final String dueDate;
  @override
  @JsonKey(name: 'disconnection_date')
  final String disconnectionDate;
  @override
  @JsonKey(name: 'previous_reading')
  final int previousReading;
  @override
  @JsonKey(name: 'current_reading')
  final int currentReading;
  @override
  @JsonKey()
  final int consumption;
  @override
  @JsonKey(name: 'current_charge')
  final double currentCharge;
  @override
  @JsonKey()
  final double arrears;
  @override
  @JsonKey()
  final double discount;
  @override
  @JsonKey()
  final double mrrf;
  @override
  @JsonKey(name: 'total_amount')
  final double totalAmount;
  @override
  @JsonKey(name: 'meter_reader_name')
  final String meterReaderName;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: 'result_status')
  final String resultStatus;
  @override
  @JsonKey()
  final String result;
  @override
  @JsonKey(name: 'deleted_at')
  final String deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'BillingInformation(id: $id, accountNo: $accountNo, billNo: $billNo, name: $name, address: $address, meterNo: $meterNo, classType: $classType, billMonth: $billMonth, readingDate: $readingDate, dueDate: $dueDate, disconnectionDate: $disconnectionDate, previousReading: $previousReading, currentReading: $currentReading, consumption: $consumption, currentCharge: $currentCharge, arrears: $arrears, discount: $discount, mrrf: $mrrf, totalAmount: $totalAmount, meterReaderName: $meterReaderName, status: $status, resultStatus: $resultStatus, result: $result, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingInformationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountNo, accountNo) ||
                other.accountNo == accountNo) &&
            (identical(other.billNo, billNo) || other.billNo == billNo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.meterNo, meterNo) || other.meterNo == meterNo) &&
            (identical(other.classType, classType) ||
                other.classType == classType) &&
            (identical(other.billMonth, billMonth) ||
                other.billMonth == billMonth) &&
            (identical(other.readingDate, readingDate) ||
                other.readingDate == readingDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.disconnectionDate, disconnectionDate) ||
                other.disconnectionDate == disconnectionDate) &&
            (identical(other.previousReading, previousReading) ||
                other.previousReading == previousReading) &&
            (identical(other.currentReading, currentReading) ||
                other.currentReading == currentReading) &&
            (identical(other.consumption, consumption) ||
                other.consumption == consumption) &&
            (identical(other.currentCharge, currentCharge) ||
                other.currentCharge == currentCharge) &&
            (identical(other.arrears, arrears) || other.arrears == arrears) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.mrrf, mrrf) || other.mrrf == mrrf) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.meterReaderName, meterReaderName) ||
                other.meterReaderName == meterReaderName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resultStatus, resultStatus) ||
                other.resultStatus == resultStatus) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        accountNo,
        billNo,
        name,
        address,
        meterNo,
        classType,
        billMonth,
        readingDate,
        dueDate,
        disconnectionDate,
        previousReading,
        currentReading,
        consumption,
        currentCharge,
        arrears,
        discount,
        mrrf,
        totalAmount,
        meterReaderName,
        status,
        resultStatus,
        result,
        deletedAt,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingInformationImplCopyWith<_$BillingInformationImpl> get copyWith =>
      __$$BillingInformationImplCopyWithImpl<_$BillingInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingInformationImplToJson(
      this,
    );
  }
}

abstract class _BillingInformation implements BillingInformation {
  const factory _BillingInformation(
          {final int id,
          @JsonKey(name: 'account_number') final String accountNo,
          @JsonKey(name: 'bill_no') final String billNo,
          final String name,
          final String address,
          @JsonKey(name: 'meter_no') final String meterNo,
          @JsonKey(name: 'class_type') final String classType,
          @JsonKey(name: 'bill_month') final String billMonth,
          @JsonKey(name: 'reading_date') final String readingDate,
          @JsonKey(name: 'due_date') final String dueDate,
          @JsonKey(name: 'disconnection_date') final String disconnectionDate,
          @JsonKey(name: 'previous_reading') final int previousReading,
          @JsonKey(name: 'current_reading') final int currentReading,
          final int consumption,
          @JsonKey(name: 'current_charge') final double currentCharge,
          final double arrears,
          final double discount,
          final double mrrf,
          @JsonKey(name: 'total_amount') final double totalAmount,
          @JsonKey(name: 'meter_reader_name') final String meterReaderName,
          final String status,
          @JsonKey(name: 'result_status') final String resultStatus,
          final String result,
          @JsonKey(name: 'deleted_at') final String deletedAt,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt}) =
      _$BillingInformationImpl;

  factory _BillingInformation.fromJson(Map<String, dynamic> json) =
      _$BillingInformationImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'account_number')
  String get accountNo;
  @override
  @JsonKey(name: 'bill_no')
  String get billNo;
  @override
  String get name;
  @override
  String get address;
  @override
  @JsonKey(name: 'meter_no')
  String get meterNo;
  @override
  @JsonKey(name: 'class_type')
  String get classType;
  @override
  @JsonKey(name: 'bill_month')
  String get billMonth;
  @override
  @JsonKey(name: 'reading_date')
  String get readingDate;
  @override
  @JsonKey(name: 'due_date')
  String get dueDate;
  @override
  @JsonKey(name: 'disconnection_date')
  String get disconnectionDate;
  @override
  @JsonKey(name: 'previous_reading')
  int get previousReading;
  @override
  @JsonKey(name: 'current_reading')
  int get currentReading;
  @override
  int get consumption;
  @override
  @JsonKey(name: 'current_charge')
  double get currentCharge;
  @override
  double get arrears;
  @override
  double get discount;
  @override
  double get mrrf;
  @override
  @JsonKey(name: 'total_amount')
  double get totalAmount;
  @override
  @JsonKey(name: 'meter_reader_name')
  String get meterReaderName;
  @override
  String get status;
  @override
  @JsonKey(name: 'result_status')
  String get resultStatus;
  @override
  String get result;
  @override
  @JsonKey(name: 'deleted_at')
  String get deletedAt;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingInformationImplCopyWith<_$BillingInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
