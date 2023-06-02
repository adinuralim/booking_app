import 'package:bloc/bloc.dart';

import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next() {
    if (state.curranteIndex < state.onboardingList.length - 1) {
      int newIndex = state.curranteIndex + 1;
      print(newIndex);
      emit(state.clone()..curranteIndex = newIndex);
    }
  }

  void prev() {
    if (state.curranteIndex > 0) {
      emit(state.clone()..curranteIndex = state.curranteIndex--);
    }
  }

  void goTo(int index) {
    if (index >= 0 && index < state.onboardingList.length) {
      emit(state.clone()..curranteIndex = index);
    }
  }

  void skip() {
    //  TODO
  }
}
