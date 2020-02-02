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
  final String project1;
  final String project2;
  final String project3;
  final String project1AssetPath;
  final String project2AssetPath;
  final String project3AssetPath;

  const HomeScreenDataModel(
      {this.characterPortraitBackgroundAsset,
      this.characterPortraitAsset,
      this.intro1,
      this.intro2,
      this.project1,
      this.project2,
      this.project3,
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
        project1: json['project1'],
        project2: json['project2'],
        project3: json['project3'],
        project1AssetPath: json[''],
        project2AssetPath: json[''],
        project3AssetPath: json['']);
  }
}
