class bugData {
  String imageID;
  String location;
  String imageDesc;
  String timeTaken;

  bugData(this.imageID,this.imageDesc,this.location,this.timeTaken);

  Map<String, dynamic> toMap(){
    var map = <String, dynamic>{
      'imageID': imageID,
      'timeTaken':timeTaken,
      'location':location,
      'imageDescription':imageDesc,
    };
    return map;
  }

  bugData.fromMap(Map<String, dynamic> map){
    imageID = map['imageID'];
    timeTaken = map['timeTaken'];
    location = map['location'];
    imageDesc = map['imageDescription'];
  }
}