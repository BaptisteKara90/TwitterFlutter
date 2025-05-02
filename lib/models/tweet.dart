class Tweet {
  int? id;
  String? profile;
  int? createdDate;
  String? author;
  String? message;

  Tweet(this.id, this.profile, this.createdDate, this.author, this.message);

  Tweet.fromJson(Map<String, dynamic> json){
    id=json["id"];
    profile=json["profile"];
    createdDate = json["created_date"];
    author=json["author"];
    message=json["message"];
  }
}