import 'package:cubit_example/cubit/color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ColorCubit(),
        child: BlocBuilder<ColorCubit, ColorState>(
          builder: (context, state) {
            if(state is ColorDownloaded || state is ColorInitial){
              return Container(
                color: state.color,
                child: FloatingActionButton(
                  onPressed: (){
                    context.read<ColorCubit>().changeColor();
                  },
                )
              );
            } else if(state is ColorNetworkFetching){
              return const CircularProgressIndicator();
            } else {
              return Container();
            }
          },
        ),
      )
    );
  }
}

