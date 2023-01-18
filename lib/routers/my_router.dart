import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/userflow/bottom_navbar.dart';
import '../screens/userflow/change_password.dart';
import '../screens/userflow/forgot_password/reset_password.dart';
import '../screens/userflow/forgot_password/add_email.dart';
import '../screens/userflow/forgot_password/forgot_password_otp.dart';
import '../screens/userflow/login_Screen.dart';
import '../screens/userflow/onboarding_screen.dart';
import '../screens/userflow/signup_screen.dart';
import '../screens/userflow/splash_screen.dart';

class MyRouter {
  static var splashScreen = "/splashScreen";
  static var onboarding = "/onboarding";
  static var loginScreen = "/loginScreen";
  static var signupScreen = "/signupScreen";
  static var addemail = "/addemail";
  static var forgotOtp = "/forgotOtp";
  static var resetPassword = "/resetPassword";
  static var changePassword = "/changePassword";
  static var bottomNavbar = "/bottomNavbar";

  static var route = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: MyRouter.splashScreen, page: () => const SplashScreen()),
    GetPage(name: MyRouter.onboarding, page: () => OnBoardingScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(name: MyRouter.signupScreen, page: () => const SignupScreen()),
    GetPage(name: MyRouter.addemail, page: () => const ForgotPassword()),
    GetPage(name: MyRouter.forgotOtp, page: () => const ForgotPasswordOtp()),
    GetPage(name: MyRouter.resetPassword, page: () => const ResetPassword()),
    GetPage(name: MyRouter.changePassword, page: () => const ChangePassword()),
    GetPage(name: MyRouter.bottomNavbar, page: () => const BottomNavbar()),
  ];
}
