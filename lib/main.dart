import 'package:block_pratice/SRC/Presentation/Widgets/CounterPage/Cubit/new_counter_cubit.dart';
import 'package:block_pratice/SRC/Presentation/Widgets/HomePage/Cubit/counter_cubit.dart';
import 'package:block_pratice/SRC/Presentation/Widgets/PostsOfUsers/Cubits/Fetch/fetch_api_cubit.dart';
import 'package:block_pratice/SRC/Presentation/Widgets/PostsOfUsers/post_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: AppTheme.themeMode,
        builder: (context, themeVal, child) {
          return MaterialApp(
            // navigatorKey: APPContext.navigatorKey,
            debugShowCheckedModeBanner: false,
            theme: AppTheme().lightTheme,
            darkTheme: AppTheme().darkTheme,
            themeMode: themeVal,
            home: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => CounterCubitClass(),
                ),
                BlocProvider(
                  create: (context) => CitiesCubit(),
                ),
                BlocProvider(
                  create: (context) => NewCounterCubit(),
                ),
                BlocProvider(
                  create: (context) => FetchApiCubit(),
                ),
              ],
              child: const PostScreen(),
            ),
          );
        });
  }
}
