String formatDuration(int totalSeconds) {
  Duration duration = Duration(seconds: totalSeconds);

  int totalDays = duration.inDays;
  int years = totalDays ~/ 365;
  int months = (totalDays % 365) ~/ 30;
  int days = (totalDays % 365) % 30;

  int hours = duration.inHours % 24;
  int minutes = duration.inMinutes % 60;
  int seconds = duration.inSeconds % 60;

  List<String> parts = [];

  if (years > 0) parts.add('$years an${years > 1 ? 's' : ''}');
  if (months > 0) parts.add('$months mois');
  if (days > 0) parts.add('$days jours');
  if (hours > 0) parts.add('$hours h');
  if (minutes > 0) parts.add('$minutes m');
  if (seconds > 0 || parts.isEmpty) parts.add('$seconds s');

  return parts.join(' ');
}
