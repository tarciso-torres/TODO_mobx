// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStore, Store {
  Computed<bool> _$isTitleEmptyComputed;

  @override
  bool get isTitleEmpty =>
      (_$isTitleEmptyComputed ??= Computed<bool>(() => super.isTitleEmpty))
          .value;

  final _$newTodoListAtom = Atom(name: '_ListStore.newTodoList');

  @override
  String get newTodoList {
    _$newTodoListAtom.context.enforceReadPolicy(_$newTodoListAtom);
    _$newTodoListAtom.reportObserved();
    return super.newTodoList;
  }

  @override
  set newTodoList(String value) {
    _$newTodoListAtom.context.conditionallyRunInAction(() {
      super.newTodoList = value;
      _$newTodoListAtom.reportChanged();
    }, _$newTodoListAtom, name: '${_$newTodoListAtom.name}_set');
  }

  final _$_ListStoreActionController = ActionController(name: '_ListStore');

  @override
  void setNewTodoTitle(String value) {
    final _$actionInfo = _$_ListStoreActionController.startAction();
    try {
      return super.setNewTodoTitle(value);
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$_ListStoreActionController.startAction();
    try {
      return super.addTodo();
    } finally {
      _$_ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'newTodoList: ${newTodoList.toString()},isTitleEmpty: ${isTitleEmpty.toString()}';
    return '{$string}';
  }
}
