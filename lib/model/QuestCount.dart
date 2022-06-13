/// feCount : 2
/// beCount : 0
/// aosCount : 0
/// iosCount : 0
/// aiCount : 0

class GetQuestCount {
  GetQuestCount({
    int? feCount,
    int? beCount,
    int? aosCount,
    int? iosCount,
    int? aiCount,
  }) {
    _feCount = feCount;
    _beCount = beCount;
    _aosCount = aosCount;
    _iosCount = iosCount;
    _aiCount = aiCount;
  }

  GetQuestCount.fromJson(dynamic json) {
    _feCount = json['feCount'];
    _beCount = json['beCount'];
    _aosCount = json['aosCount'];
    _iosCount = json['iosCount'];
    _aiCount = json['aiCount'];
  }
  int? _feCount;
  int? _beCount;
  int? _aosCount;
  int? _iosCount;
  int? _aiCount;
  GetQuestCount copyWith({
    int? feCount,
    int? beCount,
    int? aosCount,
    int? iosCount,
    int? aiCount,
  }) =>
      GetQuestCount(
        feCount: feCount ?? _feCount,
        beCount: beCount ?? _beCount,
        aosCount: aosCount ?? _aosCount,
        iosCount: iosCount ?? _iosCount,
        aiCount: aiCount ?? _aiCount,
      );
  int? get feCount => _feCount;
  int? get beCount => _beCount;
  int? get aosCount => _aosCount;
  int? get iosCount => _iosCount;
  int? get aiCount => _aiCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['feCount'] = _feCount;
    map['beCount'] = _beCount;
    map['aosCount'] = _aosCount;
    map['iosCount'] = _iosCount;
    map['aiCount'] = _aiCount;
    return map;
  }
}
