import 'package:cadastro_usuario/pages/user_list.dart';
import 'package:cadastro_usuario/provider/users_provider.dart';
import 'package:cadastro_usuario/routes/app_routes.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/user_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => UsersProvider(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            AppRoutes.Home: (_) => UserList(),
            AppRoutes.USER_FORM: (_) => UserForm(),
          }),
    );
  }
}
