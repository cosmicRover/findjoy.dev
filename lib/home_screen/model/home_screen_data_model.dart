class HomeScreenDataModel {
  final String intro1;
  final String intro2;
  final String project1;
  final String project2;
  final String project3;

  const HomeScreenDataModel(
      {this.intro1, this.intro2, this.project1, this.project2, this.project3});

  factory HomeScreenDataModel.convertFromJson(Map<String, dynamic> json) {
    return HomeScreenDataModel(
        intro1: json['intro1'],
        intro2: json['intro2'],
        project1: json['project1'],
        project2: json['project2'],
        project3: json['project3']);
  }
}
