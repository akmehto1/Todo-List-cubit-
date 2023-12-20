import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_list/todo_list.dart';
import 'package:todo_list/todoclass.dart';


class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addlist(String title){
         final todo=Todo(title: title, datecreated:DateTime.now());
         // state.add(todo);
         // print(state);
         emit([...state,todo]);
  }


}
