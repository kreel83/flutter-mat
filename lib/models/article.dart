// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
import 'dart:ffi';

List<Article> welcomeFromJson(String str) => List<Article>.from(json.decode(str).map((x) => Article.fromJson(x)));

String welcomeToJson(List<Article> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Article {
  late String id;
  late String name;
  late String dateEntered;
  late String dateModified;
  late String datePub;
  late String modifiedUserId;
  late String createdBy;
  late String description;
  late String photo;
  late String pa_html;
  late String ref_article_url;
  late String legende;


  Article(
      {required this.id,
      required this.name,
      required this.dateEntered,
      required this.dateModified,
      required this.datePub,
      required this.modifiedUserId,
      required this.createdBy,
      required this.description,
      required this.photo,
      required this.pa_html,
      required this.ref_article_url,
      required this.legende,

    });

  Article.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    dateEntered = json['date_entered'];
    dateModified = json['date_modified'];
    datePub = json['date_pub'];
    modifiedUserId = json['modified_user_id'];
    createdBy = json['created_by'];
    description = json['description'];
    photo = json['photo'];
    pa_html = json['pa_html'];
    ref_article_url = json['ref_article_url'];
    legende = json['legende'] != null ? json['legende'] : "aucune légende";

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['date_entered'] = this.dateEntered;
    data['date_modified'] = this.dateModified;
    data['date_pub'] = this.datePub;
    data['modified_user_id'] = this.modifiedUserId;
    data['created_by'] = this.createdBy;
    data['description'] = this.description;
    data['photo'] = this.photo;
    data['pa_html'] = this.pa_html;
    data['ref_article_url'] = this.ref_article_url;
    data['legende'] = this.legende;

    return data;
  }
}