class Character {
  //int id;
  String name;
  String status;
  String species;
  //String type;
  String gender;
  String image;
//  List<String>? episode;

  Character.fromJson(Map<String, dynamic> json) 
  // : id = map['id'] ?? "",
    : name = json['name'] ?? "",
    status = json['status'] ?? "",
    species = json['species'] ?? "",
    //type = map['type'] ?? "",
    gender = json['gender'] ?? "",
    image = json['image'] ?? "";
   // episode = map['episode'].cast<String>();
  }
