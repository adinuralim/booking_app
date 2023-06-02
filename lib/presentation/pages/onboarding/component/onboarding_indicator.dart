import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding_cubit.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            cubit.state.onboardingList.length,
            (index) => index == cubit.state.curranteIndex
                ? _activeIndicator(index, cubit.state.onboardingList.length)
                : _inactiveIndicator(index, cubit.state.onboardingList.length)),
      );
    });
  }

  Widget _activeIndicator(int index, int maxLength) {
    return Container(
      width: 16,
      height: 6,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: AppColor.accentPink, borderRadius: BorderRadius.circular(4)),
    );
  }

  Widget _inactiveIndicator(int index, int maxLength) {
    return Container(
        width: 6,
        height: 6,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            color: AppColor.ink03, borderRadius: BorderRadius.circular(4)));
  }
}
