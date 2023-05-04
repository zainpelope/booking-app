import 'package:auto_route/auto_route.dart';
import 'package:booking/utils/helper/helper.dart';

import '../../../presentation/pages/onboarding/view.dart';
import '../app_router.dart';

class FirstInstallGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isFirstInstall = PrefHelper.instance.isFirstInstall;
    if (isFirstInstall) {
      router.replace(const OnboardingRoute());
    } else {
      router.replace(const WelcomeRoute());
    }
  }
}
