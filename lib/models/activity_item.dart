class ActivityItem{
  final String activity;
  final String type;
  final int participants;
  final String link;

  ActivityItem({
    required this.activity,
    required this.type,
    required this.participants,
    required this.link,
  });

  factory ActivityItem.fromJson(Map<String, dynamic> json) {
    return ActivityItem(
      activity: json["activity"],
      type: json["type"],
      participants: json["participants"],
      link: json["link"],
    );
  }
}