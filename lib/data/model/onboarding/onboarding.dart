class Onboarding {
  Onboarding({
      this.image, 
      this.title, 
      this.description,});

  Onboarding.fromJson(dynamic json) {
    image = json['image'];
    title = json['title'];
    description = json['description'];
  }
  String? image;
  String? title;
  String? description;
Onboarding copyWith({  String? image,
  String? title,
  String? description,
}) => Onboarding(  image: image ?? this.image,
  title: title ?? this.title,
  description: description ?? this.description,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = image;
    map['title'] = title;
    map['description'] = description;
    return map;
  }

}