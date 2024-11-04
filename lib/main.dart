import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:personal_portfolio/config/theme/app_theme.dart';
import 'package:personal_portfolio/features/home/cubit/theme_cubit.dart';
import 'package:personal_portfolio/features/home/screen/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (_) => ThemeCubit())],
        child: BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, mode) => ScreenUtilInit(
                  designSize: const Size(1600, 3630),
                  splitScreenMode: true,
                  minTextAdapt: true,
                  builder: (context, child) {
                    return MaterialApp(
                      debugShowCheckedModeBanner: false,
                      theme: AppTheme.lighMode,
                      darkTheme: AppTheme.darkMode,
                      themeMode: mode,
                      home: HomeScreen(),
                    );
                  },
                )));
  }
}
