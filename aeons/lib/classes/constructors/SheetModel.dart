class SheetModel {
  String name;
  String path;
  String roles;
  String stars;
  String photo;
  String bodyStatus;
  String feetStatus;
  String planarSphere;
  String linkRope;
  String bestSubstatus;
  String abilitiesPriority;
  String bestRelics;
  String bestRelicsName;
  String bestOrnaments;
  String bestOrnamentsName;
  String bestLightCones;
  String bestLightConesImages;
  String element;
  String bestRelicsDescription;
  String bestOrnamentsDescription;

  SheetModel({
    required this.name,
    required this.path,
    required this.roles,
    required this.stars,
    required this.photo,
    required this.bodyStatus,
    required this.feetStatus,
    required this.planarSphere,
    required this.linkRope,
    required this.bestSubstatus,
    required this.abilitiesPriority,
    required this.bestRelics,
    required this.bestRelicsName,
    required this.bestOrnaments,
    required this.bestOrnamentsName,
    required this.bestLightCones,
    required this.bestLightConesImages,
    required this.element,
    required this.bestRelicsDescription,
    required this.bestOrnamentsDescription,
  });

  factory SheetModel.fromMap(Map<String, dynamic> json) {
    return SheetModel(
      name: json['Name'].toString(),
      path: json['Path'].toString(),
      roles: json['Roles'].toString(),
      stars: json['Stars'].toString(),
      photo: json['Photo'].toString(),
      bodyStatus: json['Body_Stats'].toString(),
      feetStatus: json['Feet_Status'].toString(),
      planarSphere: json['Planar_Sphere'].toString(),
      linkRope: json['Link_Rope'].toString(),
      bestSubstatus: json['Best_Substats'].toString(),
      abilitiesPriority: json['Abilities_Priority'].toString(),
      bestRelics: json['Best_Relics'].toString(),
      bestRelicsName: json['Best_Relics_Name'].toString(),
      bestOrnaments: json['Best_Ornaments'].toString(),
      bestOrnamentsName: json['Best_Ornaments_Name'].toString(),
      bestLightCones: json['Bests_Light_Cones'].toString(),
      bestLightConesImages: json['Bests_Light_Cones_Images'].toString(),
      element: json['Element'].toString(),
      bestRelicsDescription: json['Best_Relics_Description'].toString(),
      bestOrnamentsDescription: json['Best_Ornaments_Description'].toString(),
    );
  }
}
