//"character_portrait_background_asset": "assets/pics/wave.png",
//"character_portrait_asset": "assets/pics/joy.png",
//"intro1": "But first, introductions are in order!",
//"intro2": "Hello, my name is Joy Paul.",
//"project1": "Project 1 text",
//"project2": "Project 2 text",
//"project3": "Project 3 text",
//"project1_asset_path": "",
//"project2_asset_path": "",
//"project3_asset_path": ""

class HomeScreenDataModel {
  final String characterPortraitBackgroundAsset;
  final String characterPortraitAsset;
  final String intro1;
  final String intro2;
  final String title1;
  final String title2;
  final String title3;
  final String project1;
  final String project2;
  final String project3;
  final String project1Link;
  final String project2Link;
  final String project3Link;
  final String project1AssetPath;
  final String project2AssetPath;
  final String project3AssetPath;

  const HomeScreenDataModel(
      {this.characterPortraitBackgroundAsset,
      this.characterPortraitAsset,
      this.intro1,
      this.intro2,
      this.title1,
      this.title2,
      this.title3,
      this.project1,
      this.project2,
      this.project3,
      this.project1Link,
      this.project2Link,
      this.project3Link,
      this.project1AssetPath,
      this.project2AssetPath,
      this.project3AssetPath});

  factory HomeScreenDataModel.convertFromJson(Map<String, dynamic> json) {
    return HomeScreenDataModel(
        characterPortraitBackgroundAsset:
            json['character_portrait_background_asset'],
        characterPortraitAsset: json['character_portrait_asset'],
        intro1: json['intro1'],
        intro2: json['intro2'],
        title1: json["title1"],
        title2: json["title2"],
        title3: json["title3"],
        project1: json['project1'],
        project2: json['project2'],
        project3: json['project3'],
        project1Link: json["project1_link"],
        project2Link: json["project2_link"],
        project3Link: json["project3_link"],
        project1AssetPath: json['project1_asset_path'],
        project2AssetPath: json['project2_asset_path'],
        project3AssetPath: json['project3_asset_path']);
  }
}
