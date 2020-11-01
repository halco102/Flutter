import 'package:bloc_pattern/bloc/validacija_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bloc pattern"),
        ),
        body: BlocProvider(
          create: (context) => ValidacijaBloc(),
          child: BlocBuilder<ValidacijaBloc, ValidacijaState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                                errorText: (state is ValidacijaFail) ? "Error" : null),
                            controller: this._controller,
                            onChanged: (text) {
                              BlocProvider.of<ValidacijaBloc>(context)
                                  .add(TextChanged(text: text));
                            }),
                        RaisedButton(
                          onPressed: null,
                  
        )   ,     child: Text("Button"),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
