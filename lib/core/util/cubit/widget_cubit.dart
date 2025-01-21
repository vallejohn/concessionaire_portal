import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetCubit<T> extends Cubit<T> {
  WidgetCubit(super.type);
  void onUpdateState(T type) => emit(type);
}