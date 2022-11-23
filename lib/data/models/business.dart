class Business {
  final int id;
  final String name;
  final String imageUrl;
  final String primaryColor;
  final String secondaryColor;
  final String tertiaryColor;

  Business(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.primaryColor,
      required this.secondaryColor,
      required this.tertiaryColor});

  Business.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"],
        imageUrl = res["imageUrl"],
        primaryColor = res["primaryColor"],
        secondaryColor = res["secondaryColor"],
        tertiaryColor = res["tertiaryColor"];
}
