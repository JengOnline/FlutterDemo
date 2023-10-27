class ProfileData {
  final int count;
  final int age;
  final String name;

  const ProfileData({
    required this.count,
    required this.age,
    required this.name,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) {
    return ProfileData(
      count: json['count'] as int,
      age: json['age'] as int,
      name: json['name'] as String,
    );
  }
}
