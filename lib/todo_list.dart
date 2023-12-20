import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/cubit/todo_cubit.dart';
import 'package:todo_list/todoclass.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final todoObject=BlocProvider.of<TodoCubit>(context);

    return BlocBuilder<TodoCubit,List<Todo>>(
      bloc:todoObject,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Todo List'),
          ),
          body:ListView.builder(
              itemCount:state.length,
              itemBuilder:(context,index){
            final todoitem=state[index];
            return Text(todoitem.title);
          }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {

              Navigator.pushNamed(context, '/add-todo');
            },
            tooltip: 'Add Todo',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
