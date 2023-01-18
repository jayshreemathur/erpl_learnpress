import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/pages/checkout_screen.dart';
import '../screens/pages/course_fields/choice_based_course.dart';
import '../screens/pages/course_fields/search_based_course.dart';
import '../screens/pages/courses_section/paid_single_course.dart';
import '../screens/pages/courses_section/single_course.dart';
import '../screens/pages/home_screen.dart';
import '../screens/pages/notification_screen.dart';
import '../screens/pages/profile_Screen.dart';
import '../screens/pages/single_certificate.dart';
import '../screens/pages/single_chat.dart';
import '../screens/pages/single_notification.dart';
import '../screens/pages/thank_screen.dart';
import '../screens/pages/thankyou_screen.dart';
import '../screens/profile/edit_profile.dart';
import '../screens/profile/my_certificate.dart';
import '../screens/profile/my_orders.dart';
import '../screens/profile/my_wishlist.dart';
import '../screens/quiz_sections/failed_result.dart';
import '../screens/quiz_sections/lesson_first.dart';
import '../screens/quiz_sections/lesson_second.dart';
import '../screens/quiz_sections/prcatice.dart';
import '../screens/quiz_sections/quiz_first.dart';
import '../screens/quiz_sections/review_Incorrect.dart';
import '../screens/quiz_sections/review_correct.dart';
import '../screens/quiz_sections/sub_quiz_first.dart';
import '../screens/quiz_sections/sub_quiz_second.dart';
import '../screens/quiz_sections/view_result.dart';
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
  static var singleCourse = "/singleCourse";
  static var paidCourse = "/paidCourse";
  static var quizFirst = "/quizFirst";
  static var subQuizFirst = "/subQuizFirst";
  static var lessonFirst = "/lessonFirst";
  static var lessonSecond = "/lessonSecond";
  static var editProfile = "/editProfile";
  static var myProfile = "/myProfile";
  static var myCertificate = "/myCertificate";
  static var myOrder = "/myOrder";
  static var myWishlist = "/myWishlist";
  static var myNotifications = "/myNotifications";
  static var myMessage = "/myMessage";
  static var userMessageScreen = "/userMessageScreen";
  static var singleCertificate = "/singleCertificate";
  static var checkoutScreen = "/checkoutScreen";
  static var selectedCourse = "/selectedCourse";
  static var searchedCourse = "/searchedCourse";
  static var failScreen = "/failScreen";
  static var subQuizSecond = "/subQuizSecond";
  static var passedResult = "/passedResult";
  static var thankScreen = "/thankScreen";
  static var homeScreen = "/homeScreen";
  static var correctResult = "/correctResult";
  static var incorrectResult = "/incorrectResult";
  static var paymentSuccessful = "/paymentSuccessful";
  static var practicalTest = "/practicalTest";

  static var route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: MyRouter.splashScreen, page: () => const SplashScreen()),
    GetPage(name: MyRouter.onboarding, page: () => OnBoardingScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(name: MyRouter.signupScreen, page: () => const SignupScreen()),
    GetPage(name: MyRouter.addemail, page: () => const ForgotPassword()),
    GetPage(name: MyRouter.homeScreen, page: () => HomeScreen()),
    GetPage(name: MyRouter.practicalTest, page: () => PracticalTest()),
    GetPage(name: MyRouter.paymentSuccessful, page: () => PaymentSuccessful()),
    GetPage(name: MyRouter.correctResult, page: () => ViewCorrectScreen()),
    GetPage(name: MyRouter.incorrectResult, page: () => ViewIncorrectScreen()),
    GetPage(name: MyRouter.forgotOtp, page: () => const ForgotPasswordOtp()),
    GetPage(name: MyRouter.resetPassword, page: () => const ResetPassword()),
    GetPage(name: MyRouter.changePassword, page: () => const ChangePassword()),
    GetPage(name: MyRouter.bottomNavbar, page: () => const BottomNavbar()),
    GetPage(name: MyRouter.singleCourse, page: () => const SingleCourse()),
    GetPage(name: MyRouter.paidCourse, page: () => const PaidSingleCourse()),
    GetPage(name: MyRouter.quizFirst, page: () => const QuizFirst()),
    GetPage(name: MyRouter.subQuizFirst, page: () => const SubQuizFirst()),
    GetPage(name: MyRouter.lessonFirst, page: () => const LessonFirst()),
    GetPage(name: MyRouter.lessonSecond, page: () => const LessonSecond()),
    GetPage(name: MyRouter.editProfile, page: () => const EditProfile()),
    GetPage(name: MyRouter.myProfile, page: () => const ProfileScreen()),
    GetPage(name: MyRouter.myCertificate, page: () => const MyCertificate()),
    GetPage(name: MyRouter.myOrder, page: () => const MyOrders()),
    GetPage(name: MyRouter.thankScreen, page: () => const ThankScreen()),
    GetPage(name: MyRouter.myWishlist, page: () => const MyWishlist()),
    GetPage(name: MyRouter.checkoutScreen, page: () => CheckoutScreen()),
    GetPage(name: MyRouter.failScreen, page: () => FailedResult()),
    GetPage(name: MyRouter.passedResult, page: () => ViewResult()),
    GetPage(name: MyRouter.subQuizSecond, page: () => SubQuizSecond()),
    GetPage(name: MyRouter.selectedCourse, page: () => SelectedCoursesScreen()),
    GetPage(name: MyRouter.searchedCourse, page: () => SearchedCoursesScreen()),
    GetPage(
        name: MyRouter.myNotifications, page: () => const NotificationScreen()),
    GetPage(name: MyRouter.myMessage, page: () => const SingleNotification()),
    GetPage(name: MyRouter.userMessageScreen, page: () => const UserMessages()),
    GetPage(
        name: MyRouter.singleCertificate,
        page: () => const SingleCertificate()),
  ];
}
