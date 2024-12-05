import 'package:go_router/go_router.dart';
import 'package:graduation/core/routes/routes.dart';
import 'package:graduation/features/auth/add_photo.dart';
import 'package:graduation/features/auth/forget_password.dart';
import 'package:graduation/features/auth/login.dart';
import 'package:graduation/features/auth/phone_number_verified.dart';
import 'package:graduation/features/auth/register1.dart';
import 'package:graduation/features/auth/register2.dart';
import 'package:graduation/features/auth/reset_password.dart';
import 'package:graduation/features/auth/select_your_role.dart';
import 'package:graduation/features/auth/verify_email.dart';
import 'package:graduation/features/lets_get_started.dart';
import 'package:graduation/features/onboarding/on_boarding2_view.dart';
import 'package:graduation/features/onboarding/on_boardinng_view.dart';
import 'package:graduation/features/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: Routes.onboarding2,
      builder: (context, state) => const OnboardingViewSecond(),
    ),
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: Routes.letsGetStarted,
      builder: (context, state) => const LetsGetStartedView(),
    ),
    GoRoute(
      path: Routes.addPhoto,
      builder: (context, state) => const AddPhotoView(),
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: Routes.register1,
      builder: (context, state) => RegistreScreenFirst(),
    ),
    GoRoute(
      path: Routes.register2,
      builder: (context, state) => RegistreScreenSecond(),
    ),
    GoRoute(
      path: Routes.forgetPassword,
      builder: (context, state) => const ForgetPasswordScreen(),
    ),
    GoRoute(
      path: Routes.phoneNumberVerified,
      builder: (context, state) => const PhoneNumberVerifiedScreen(),
    ),
    GoRoute(
      path: Routes.resetPassword,
      builder: (context, state) => const ResetPasswordScreen(),
    ),
    GoRoute(
      path: Routes.roleSelection,
      builder: (context, state) => const RoleSelectionScreen(),
    ),
    GoRoute(
      path: Routes.verificationCode,
      builder: (context, state) => const VerificationCodeScreen(),
    ),
  ],
);
