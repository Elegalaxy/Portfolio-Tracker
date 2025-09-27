class Portfolio {
  final String id;      // uuid
  final String name;
  final int createdAt;  // epoch ms

  Portfolio({
    required this.id,
    required this.name,
    required this.createdAt,
  });

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: json['createdAt'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt,
    };
  }
}
