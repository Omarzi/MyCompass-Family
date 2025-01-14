import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riedberg_admin_app/app/riedberg_admin_app.dart';
import 'package:riedberg_admin_app/core/helper_functions/cache_helper.dart';
import 'package:riedberg_admin_app/core/manager/setting/settings_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.init();
  runApp (MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => SettingsCubit(),
      ),
    ],
    child: const RiedbergAdminApp(),
    ),
  );
}