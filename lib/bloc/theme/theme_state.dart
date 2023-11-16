import 'package:equatable/equatable.dart';

enum AppTheme {
  light,
  dark,
}

class ThemeState extends Equatable {
  ThemeState({
    this.appTheme = AppTheme.light,
  });
  final AppTheme appTheme;

  factory ThemeState.initial() {
    return ThemeState();
  }

  @override
  List<Object> get props => [appTheme];

  @override
  String toString() => "ThemeState(appTheme: $appTheme)";

  ThemeState copyWith({AppTheme? appTheme}) {
    return ThemeState(appTheme: appTheme ?? this.appTheme);
  }
}
