import 'package:coding_challenge/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/data/data_source/login_api.dart';
import 'package:login/data/repositories/repository/login_repository_imp.dart';
import 'package:login/domain/usecases/user_login_usecase.dart';
import 'package:login/presentation/logics/cubits/login_cubit.dart';
import 'package:login/presentation/ui/login_screen.dart';

// final GlobalKey<NavigatorState> _rootNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: '_rootNavigatorKey');

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
        canvasColor: Colors.transparent,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color.fromRGBO(65, 171, 158, 1),
          selectionColor: Color.fromRGBO(65, 171, 158, 1),
          selectionHandleColor: Color.fromRGBO(65, 171, 158, 1),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: createMaterialColor(Colors.white))
            .copyWith(
          secondary: createMaterialColor(const Color.fromRGBO(65, 171, 158, 1)),
        ),
        primaryColorDark: Colors.white,
      ),
      home: BlocProvider(
        create: (context) =>
            LoginCubit(LoginUseCase(LoginRepositoryImpl(LoginApi()))),
        child: const LoginScreen(),
      ),
    );
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
