import 'package:booking_app/data/model/onboarding/onboarding.dart';
import 'package:booking_app/data/src/img_string.dart';

class OnboardingState {
  final List<Onboarding> onboardingList = [
    Onboarding(
        image: ImgString.standing,
        title: "Find a Roomie!",
        description:
            "We've helped millions across the nation find their perfect match... and you're next!"),
    Onboarding(
        image: ImgString.standing2,
        title: "Your Roommate Finder",
        description:
            "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!"),
    Onboarding(
        image: ImgString.standing1,
        title: "Find Your Match!",
        description:
            "We've helped millions across the nation find their perfect match... and you're next!")
  ];

  int curranteIndex = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
