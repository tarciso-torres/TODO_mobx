import 'package:mobx/mobx.dart';
import 'package:todomobx/stores/todo_store.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {

  @observable
  String newTodoList = "";

  @action
  void setNewTodoTitle(String value) => newTodoList = value;

  @computed
  bool get isTitleEmpty => newTodoList.isNotEmpty;

 
  ObservableList<TodoStore> todoList = ObservableList();

  @action
  void addTodo() {
    todoList.insert(0, TodoStore(newTodoList));
    newTodoList = "";
  }

}