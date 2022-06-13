/// recommend_1 : [{"id":"15"},{"url":"<iframe width=\"560px\" height=\"315px\" src=\"https://www.youtube.com/watch?v=2jwnbZKc66E&list=PLSK4WsJ8JS4cQ-niGNum4bkK_THHOizTs&index=5\" title=\"YouTube video player\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowFullScreen></iframe>"}]
/// recommend_2 : [{"id":"3"},{"url":"<iframe width=\"560px\" height=\"315px\" src=\"https://www.youtube.com/watch?v=v2Aw9f-MK5s&list=PLv2d7VI9OotQ1F92Jp9Ce7ovHEsuRQB3Y&index=3\" title=\"YouTube video player\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowFullScreen></iframe>"}]
/// recommend_3 : [{"id":"49"},{"url":"<iframe width=\"560px\" height=\"315px\" src=\"https://www.youtube.com/watch?v=vcCaSBJpsHk&list=PLS8gIc2q83OjStGjdTF2LZtc0vefCAbnX&index=9\" title=\"YouTube video player\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowFullScreen></iframe>"}]
/// recommend_4 : [{"id":"21"},{"url":"<iframe width=\"560px\" height=\"315px\" src=\"https://www.youtube.com/watch?v=8RIsukgeUVw&list=PLQdnHjXZyYadiw5aV3p6DwUdXV2bZuhlN&index=1\" title=\"YouTube video player\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowFullScreen></iframe>"}]
/// recommend_5 : [{"id":"37"},{"url":"<iframe width=\"560px\" height=\"315px\" src=\"https://www.youtube.com/watch?v=8Xe_fr_WRgc&list=PLz8NH7YHUj_ZmlgcSETF51Z9GSSU6Uioy&index=8\" title=\"YouTube video player\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowFullScreen></iframe>"}]
/// recommend_6 : [{"id":"1"},{"url":"<iframe width=\"560px\" height=\"315px\" src=\"https://www.youtube.com/watch?v=v2Aw9f-MK5s&list=PLv2d7VI9OotQ1F92Jp9Ce7ovHEsuRQB3Y&index=1\" title=\"YouTube video player\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowFullScreen></iframe>"}]

class RecommendLecture {
  RecommendLecture({
    List<Recommend1>? recommend1,
    List<Recommend2>? recommend2,
    List<Recommend3>? recommend3,
    List<Recommend4>? recommend4,
    List<Recommend5>? recommend5,
    List<Recommend6>? recommend6,
  }) {
    _recommend1 = recommend1;
    _recommend2 = recommend2;
    _recommend3 = recommend3;
    _recommend4 = recommend4;
    _recommend5 = recommend5;
    _recommend6 = recommend6;
  }

  RecommendLecture.fromJson(dynamic json) {
    if (json['recommend_1'] != null) {
      _recommend1 = [];
      json['recommend_1'].forEach((v) {
        _recommend1?.add(Recommend1.fromJson(v));
      });
    }
    if (json['recommend_2'] != null) {
      _recommend2 = [];
      json['recommend_2'].forEach((v) {
        _recommend2?.add(Recommend2.fromJson(v));
      });
    }
    if (json['recommend_3'] != null) {
      _recommend3 = [];
      json['recommend_3'].forEach((v) {
        _recommend3?.add(Recommend3.fromJson(v));
      });
    }
    if (json['recommend_4'] != null) {
      _recommend4 = [];
      json['recommend_4'].forEach((v) {
        _recommend4?.add(Recommend4.fromJson(v));
      });
    }
    if (json['recommend_5'] != null) {
      _recommend5 = [];
      json['recommend_5'].forEach((v) {
        _recommend5?.add(Recommend5.fromJson(v));
      });
    }
    if (json['recommend_6'] != null) {
      _recommend6 = [];
      json['recommend_6'].forEach((v) {
        _recommend6?.add(Recommend6.fromJson(v));
      });
    }
  }
  List<Recommend1>? _recommend1;
  List<Recommend2>? _recommend2;
  List<Recommend3>? _recommend3;
  List<Recommend4>? _recommend4;
  List<Recommend5>? _recommend5;
  List<Recommend6>? _recommend6;
  RecommendLecture copyWith({
    List<Recommend1>? recommend1,
    List<Recommend2>? recommend2,
    List<Recommend3>? recommend3,
    List<Recommend4>? recommend4,
    List<Recommend5>? recommend5,
    List<Recommend6>? recommend6,
  }) =>
      RecommendLecture(
        recommend1: recommend1 ?? _recommend1,
        recommend2: recommend2 ?? _recommend2,
        recommend3: recommend3 ?? _recommend3,
        recommend4: recommend4 ?? _recommend4,
        recommend5: recommend5 ?? _recommend5,
        recommend6: recommend6 ?? _recommend6,
      );
  List<Recommend1>? get recommend1 => _recommend1;
  List<Recommend2>? get recommend2 => _recommend2;
  List<Recommend3>? get recommend3 => _recommend3;
  List<Recommend4>? get recommend4 => _recommend4;
  List<Recommend5>? get recommend5 => _recommend5;
  List<Recommend6>? get recommend6 => _recommend6;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_recommend1 != null) {
      map['recommend_1'] = _recommend1?.map((v) => v.toJson()).toList();
    }
    if (_recommend2 != null) {
      map['recommend_2'] = _recommend2?.map((v) => v.toJson()).toList();
    }
    if (_recommend3 != null) {
      map['recommend_3'] = _recommend3?.map((v) => v.toJson()).toList();
    }
    if (_recommend4 != null) {
      map['recommend_4'] = _recommend4?.map((v) => v.toJson()).toList();
    }
    if (_recommend5 != null) {
      map['recommend_5'] = _recommend5?.map((v) => v.toJson()).toList();
    }
    if (_recommend6 != null) {
      map['recommend_6'] = _recommend6?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "1"

class Recommend6 {
  Recommend6({
    String? id,
  }) {
    _id = id;
  }

  Recommend6.fromJson(dynamic json) {
    _id = json['id'];
  }
  String? _id;
  Recommend6 copyWith({
    String? id,
  }) =>
      Recommend6(
        id: id ?? _id,
      );
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }
}

/// id : "37"

class Recommend5 {
  Recommend5({
    String? id,
  }) {
    _id = id;
  }

  Recommend5.fromJson(dynamic json) {
    _id = json['id'];
  }
  String? _id;
  Recommend5 copyWith({
    String? id,
  }) =>
      Recommend5(
        id: id ?? _id,
      );
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }
}

/// id : "21"

class Recommend4 {
  Recommend4({
    String? id,
  }) {
    _id = id;
  }

  Recommend4.fromJson(dynamic json) {
    _id = json['id'];
  }
  String? _id;
  Recommend4 copyWith({
    String? id,
  }) =>
      Recommend4(
        id: id ?? _id,
      );
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }
}

/// id : "49"

class Recommend3 {
  Recommend3({
    String? id,
  }) {
    _id = id;
  }

  Recommend3.fromJson(dynamic json) {
    _id = json['id'];
  }
  String? _id;
  Recommend3 copyWith({
    String? id,
  }) =>
      Recommend3(
        id: id ?? _id,
      );
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }
}

/// id : "3"

class Recommend2 {
  Recommend2({
    String? id,
  }) {
    _id = id;
  }

  Recommend2.fromJson(dynamic json) {
    _id = json['id'];
  }
  String? _id;
  Recommend2 copyWith({
    String? id,
  }) =>
      Recommend2(
        id: id ?? _id,
      );
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }
}

/// id : "15"

class Recommend1 {
  Recommend1({
    String? id,
  }) {
    _id = id;
  }

  Recommend1.fromJson(dynamic json) {
    _id = json['id'];
  }
  String? _id;
  Recommend1 copyWith({
    String? id,
  }) =>
      Recommend1(
        id: id ?? _id,
      );
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }
}
