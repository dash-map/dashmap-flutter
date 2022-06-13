/// email : "hun00719@gmail.com"
/// name : "seockhun"
/// profileImageUrl : "https://avatars.githubusercontent.com/u/66873540?v=4"
/// crown : {"isFeClear":false,"isBeClear":false,"isAosClear":false,"isIosClear":false,"isAiClear":false}
/// progress : {"feCount":0,"beCount":0,"aosCount":0,"iosCount":0,"aiCount":0}

class UserData {
  UserData({
    String? email,
    String? name,
    String? profileImageUrl,
    Crown? crown,
    Progress? progress,
  }) {
    _email = email;
    _name = name;
    _profileImageUrl = profileImageUrl;
    _crown = crown;
    _progress = progress;
  }

  UserData.fromJson(dynamic json) {
    _email = json['email'];
    _name = json['name'];
    _profileImageUrl = json['profileImageUrl'];
    _crown = json['crown'] != null ? Crown.fromJson(json['crown']) : null;
    _progress =
        json['progress'] != null ? Progress.fromJson(json['progress']) : null;
  }
  String? _email;
  String? _name;
  String? _profileImageUrl;
  Crown? _crown;
  Progress? _progress;
  UserData copyWith({
    String? email,
    String? name,
    String? profileImageUrl,
    Crown? crown,
    Progress? progress,
  }) =>
      UserData(
        email: email ?? _email,
        name: name ?? _name,
        profileImageUrl: profileImageUrl ?? _profileImageUrl,
        crown: crown ?? _crown,
        progress: progress ?? _progress,
      );
  String? get email => _email;
  String? get name => _name;
  String? get profileImageUrl => _profileImageUrl;
  Crown? get crown => _crown;
  Progress? get progress => _progress;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['name'] = _name;
    map['profileImageUrl'] = _profileImageUrl;
    if (_crown != null) {
      map['crown'] = _crown?.toJson();
    }
    if (_progress != null) {
      map['progress'] = _progress?.toJson();
    }
    return map;
  }
}

/// feCount : 0
/// beCount : 0
/// aosCount : 0
/// iosCount : 0
/// aiCount : 0

class Progress {
  Progress({
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

  Progress.fromJson(dynamic json) {
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
  Progress copyWith({
    int? feCount,
    int? beCount,
    int? aosCount,
    int? iosCount,
    int? aiCount,
  }) =>
      Progress(
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

/// isFeClear : false
/// isBeClear : false
/// isAosClear : false
/// isIosClear : false
/// isAiClear : false

class Crown {
  Crown({
    bool? isFeClear,
    bool? isBeClear,
    bool? isAosClear,
    bool? isIosClear,
    bool? isAiClear,
  }) {
    _isFeClear = isFeClear;
    _isBeClear = isBeClear;
    _isAosClear = isAosClear;
    _isIosClear = isIosClear;
    _isAiClear = isAiClear;
  }

  Crown.fromJson(dynamic json) {
    _isFeClear = json['isFeClear'];
    _isBeClear = json['isBeClear'];
    _isAosClear = json['isAosClear'];
    _isIosClear = json['isIosClear'];
    _isAiClear = json['isAiClear'];
  }
  bool? _isFeClear;
  bool? _isBeClear;
  bool? _isAosClear;
  bool? _isIosClear;
  bool? _isAiClear;
  Crown copyWith({
    bool? isFeClear,
    bool? isBeClear,
    bool? isAosClear,
    bool? isIosClear,
    bool? isAiClear,
  }) =>
      Crown(
        isFeClear: isFeClear ?? _isFeClear,
        isBeClear: isBeClear ?? _isBeClear,
        isAosClear: isAosClear ?? _isAosClear,
        isIosClear: isIosClear ?? _isIosClear,
        isAiClear: isAiClear ?? _isAiClear,
      );
  bool? get isFeClear => _isFeClear;
  bool? get isBeClear => _isBeClear;
  bool? get isAosClear => _isAosClear;
  bool? get isIosClear => _isIosClear;
  bool? get isAiClear => _isAiClear;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isFeClear'] = _isFeClear;
    map['isBeClear'] = _isBeClear;
    map['isAosClear'] = _isAosClear;
    map['isIosClear'] = _isIosClear;
    map['isAiClear'] = _isAiClear;
    return map;
  }
}
