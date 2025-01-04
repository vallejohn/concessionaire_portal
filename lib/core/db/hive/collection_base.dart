import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/local_storage_service.dart';

import '../../exceptions/hive_exceptions.dart';

abstract class CollectionBase<T, R>{
  late final CollectionBox<T> box;
  late final String key;

  Future<void> init(LocalStorageService storageService);

  Future<R> create(T value);
  Future<R> read({List<String>? keys});

  @protected
  Future<Map<String, T>> readAsMap()async {
    final data = await box.getAllValues();
    if(data.isEmpty) throw emptyCollectionException();
    return data;
  }
  Future<R> update(T value);
  Future<R> delete(T value);
  Future<R> deleteAll(List<T> values);
  Future<void> clear();
}