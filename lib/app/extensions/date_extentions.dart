extension DateExtenstion on DateTime {
  bool isSameDay(DateTime dateTime) {
    return year == dateTime.year &&
        month == dateTime.month &&
        day == dateTime.day;
  }

  bool isSameMonth(DateTime dateTime) {
    return year == dateTime.year && month == dateTime.month;
  }
}
