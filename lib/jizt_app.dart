import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jizt/pages/home_page.dart';
import 'package:jizt/theme.dart';
import 'package:jizt_repository/jizt_repository.dart';

class JiztApp extends StatelessWidget {
  final JiztRepository _jiztRepository;

  const JiztApp({
    Key key,
    JiztRepository jiztRepository,
  })  : _jiztRepository = jiztRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _jiztRepository,
      child: MaterialApp(
        home: HomePage(),
        title: 'Jizt',
        theme: lightTheme,
        darkTheme: darkTheme,
      ),
    );
  }
}