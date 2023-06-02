import 'package:booking_app/config/config.dart';
import 'package:booking_app/extension/extension.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
      print(state.curranteIndex);
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            cubit.state.onboardingList[cubit.state.curranteIndex].title ?? "",
            style: AppFont.h3,
            textAlign: TextAlign.center,
          ),
          8.0.height,
          Text(
            cubit.state.onboardingList[cubit.state.curranteIndex].description ??
                "",
            style: AppFont.paragraphMedium,
            textAlign: TextAlign.center,
          ),
        ],
      );
    });
  }
}
