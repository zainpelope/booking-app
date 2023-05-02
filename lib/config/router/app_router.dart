import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:booking/presentation/pages/discover/favorite/view.dart';
import 'package:booking/presentation/pages/discover/settings/view.dart';
import 'package:booking/presentation/pages/discover/trips/view.dart';
import 'package:booking/presentation/pages/discover/view.dart';
import 'package:booking/presentation/pages/welcome/register/view.dart';
import 'package:flutter/cupertino.dart';

import '../../presentation/pages/discover/trips/detail/view.dart';
import '../../presentation/pages/welcome/login/view.dart';
import '../../presentation/pages/welcome/view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage, path: '/welcome', initial: true),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: RegisterPage, path: '/register'),
    AutoRoute(page: DiscoverPage, path: '/discover'),
    AutoRoute(page: TripsPage, path: '/trips'),
    AutoRoute(page: DetailPage, path: '/detail'),
    AutoRoute(page: SettingsPage, path: '/settings'),
    AutoRoute(page: FavoritePage, path: '/favorite'),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
