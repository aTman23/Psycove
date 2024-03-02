class TimeSlot {
  String time;
  bool isActive;

  TimeSlot(this.time, this.isActive);
}

List<TimeSlot> timeSlots = [
  TimeSlot('8:00 AM', true),
  TimeSlot('9:00 AM', false),
  TimeSlot('10:00 AM', true),
  TimeSlot('11:00 AM', false),
];

