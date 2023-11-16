import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payload_bloc/bloc/theme/theme_event.dart';
import 'package:payload_bloc/bloc/theme/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeThemeEvent>(
      (event, emit) => {
        if (event.randInt % 2 == 0)
          {emit(state.copyWith(appTheme: AppTheme.light))}
        else
          {emit(state.copyWith(appTheme: AppTheme.dark))}
      },
    );
  }
}
