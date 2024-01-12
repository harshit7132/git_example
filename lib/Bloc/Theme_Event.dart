abstract class ThemeEvent {}

class ThemeChanged extends ThemeEvent {
  bool isDark;
  ThemeChanged({required this.isDark});
}
