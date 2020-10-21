// To parse this JSON data, do
//
//     final covidresult = covidresultFromJson(jsonString);

import 'dart:convert';

Covidresult covidresultFromJson(String str) => Covidresult.fromJson(json.decode(str));

String covidresultToJson(Covidresult data) => json.encode(data.toJson());

class Covidresult {
  Covidresult({
    this.cases,
    this.deaths,
    this.recovered,
    this.updated,
  });

  int cases;
  int deaths;
  int recovered;
  int updated;

  factory Covidresult.fromJson(Map<String, dynamic> json) => Covidresult(
    cases: json["cases"] == null ? null : json["cases"],
    deaths: json["deaths"] == null ? null : json["deaths"],
    recovered: json["recovered"] == null ? null : json["recovered"],
    updated: json["updated"] == null ? null : json["updated"],
  );

  Map<String, dynamic> toJson() => {
    "cases": cases == null ? null : cases,
    "deaths": deaths == null ? null : deaths,
    "recovered": recovered == null ? null : recovered,
    "updated": updated == null ? null : updated,
  };
}
