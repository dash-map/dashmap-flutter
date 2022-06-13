/// quest : "CSS"
/// problem : "다음중 css의 유형이 아닌것은?"
/// questions : [{"id":5,"question":"내부 스타일 시트"},{"id":6,"question":"외부 스타일 시트"},{"id":7,"question":"인라인 스타일 시트"},{"id":8,"question":"오버 스타일 시트"}]
/// answer : 4

class GetQuest {
  GetQuest({
    String? quest,
    String? problem,
    List<Questions>? questions,
    int? answer,
  }) {
    _quest = quest;
    _problem = problem;
    _questions = questions;
    _answer = answer;
  }

  GetQuest.fromJson(dynamic json) {
    _quest = json['quest'];
    _problem = json['problem'];
    if (json['questions'] != null) {
      _questions = [];
      json['questions'].forEach((v) {
        _questions?.add(Questions.fromJson(v));
      });
    }
    _answer = json['answer'];
  }
  String? _quest;
  String? _problem;
  List<Questions>? _questions;
  int? _answer;
  GetQuest copyWith({
    String? quest,
    String? problem,
    List<Questions>? questions,
    int? answer,
  }) =>
      GetQuest(
        quest: quest ?? _quest,
        problem: problem ?? _problem,
        questions: questions ?? _questions,
        answer: answer ?? _answer,
      );
  String? get quest => _quest;
  String? get problem => _problem;
  List<Questions>? get questions => _questions;
  int? get answer => _answer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quest'] = _quest;
    map['problem'] = _problem;
    if (_questions != null) {
      map['questions'] = _questions?.map((v) => v.toJson()).toList();
    }
    map['answer'] = _answer;
    return map;
  }
}

/// id : 5
/// question : "내부 스타일 시트"

class Questions {
  Questions({
    int? id,
    String? question,
  }) {
    _id = id;
    _question = question;
  }

  Questions.fromJson(dynamic json) {
    _id = json['id'];
    _question = json['question'];
  }
  int? _id;
  String? _question;
  Questions copyWith({
    int? id,
    String? question,
  }) =>
      Questions(
        id: id ?? _id,
        question: question ?? _question,
      );
  int? get id => _id;
  String? get question => _question;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['question'] = _question;
    return map;
  }
}
