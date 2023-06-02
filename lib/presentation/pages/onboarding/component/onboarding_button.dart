import 'package:booking_app/extension/extension.dart';
import 'package:booking_app/presentation/widget/primary_button.dart';
import 'package:booking_app/presentation/widget/secondary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding_cubit.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          text: "Skip",
          onPressed: cubit.skip,
          type: SecondaryButtonType.type3,
        ),
        16.0.width,
        PrimaryButton(
          text: "Next",
          onPressed: cubit.next,
          type: PrimaryButtonType.type3,
        )
      ],
    );
  }
}
