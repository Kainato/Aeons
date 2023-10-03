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
  String bestOrnaments;
  String bestLightCones;
  String element;

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
    required this.bestOrnaments,
    required this.bestLightCones,
    required this.element,
  });

  factory SheetModel.fromMap(Map<String, dynamic> json) {
    return SheetModel(
      name: json['Name'],
      path: json['Path'],
      roles: json['Roles'],
      stars: json['Stars'],
      photo: json['Photo'],
      bodyStatus: json['Body_Stats'],
      feetStatus: json['Feet_Status'],
      planarSphere: json['Planar_Sphere'],
      linkRope: json['Link_Rope'],
      bestSubstatus: json['Best_Substats'],
      abilitiesPriority: json['Abilities_Priority'],
      bestRelics: json['Best_Relics'],
      bestOrnaments: json['Best_Ornaments'],
      bestLightCones: json['Bests_Light_Cones'],
      element: json['Element'],
    );
  }
}
