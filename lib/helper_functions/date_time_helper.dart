import 'package:intl/intl.dart';

class DateTimeHelper {
  static String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 12) {
      return "Good Morning 🌞";
    } else if (hour >= 12 && hour < 17) {
      return "Good Afternoon 🌤️";
    } else if (hour >= 17 && hour < 21) {
      return "Good Evening 🌆";
    } else {
      return "Good Night 🌙";
    }
  }

  static String getCurrentTime() {
    return DateFormat('h:mm a').format(DateTime.now());
  }

  static String getCurrentDate() {
    return DateFormat('MMM d, yyyy').format(DateTime.now());
  }

  static String getFormattedDateTime() {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  }

  static String getDayName() {
    return DateFormat('EEEE').format(DateTime.now());
  }
}
