import 'package:flutter/material.dart';
import 'package:programming_language_test/models/models.dart';
import 'package:programming_language_test/repositories/app_repository.dart';
import 'package:programming_language_test/services/saver_service.dart';

class AppProvider extends ChangeNotifier {
  AppRepository _repository = AppRepository();
  SaverService _saverService = SaverService();

  List<Question> _questionList = [];
  List<Answer> _answerList = [];
  List<Result> _resultList = [];

  Question _curQuestion;
  List<Answer> _curAnswerList = [];
  Result _result;

  List<SavedResult> _savedResultList = [];

  AppProvider() {
    _questionList = _repository.questionList;
    _answerList = _repository.answerList;
    _resultList = _repository.resultList;
  }

  Future<void> init() async {
    setStartState();
    await _saverService.init();
    _loadSavedResultList();
  }

  Question get curQuestion => _curQuestion;
  List<Answer> get curAnswerList => _curAnswerList;
  Result get result => _result;

  List<SavedResult> get savedResultList => _savedResultList;

  void setStartState() {
    _setCurQuestionById(1);
    _serCurAnswerListByQuestionId(1);
  }

  bool selectAnswerById(int id) {
    Answer answer = _getAnswerById(id);
    if (answer.isNextStepResult) {
      _setResultById(answer.nextStepId);
      return true;
    } else {
      _setCurQuestionById(answer.nextStepId);
      _serCurAnswerListByQuestionId(answer.nextStepId);
      notifyListeners();
      return false;
    }
  }

  void removeSavedResultById(int id) {
    _savedResultList.removeWhere((e) => e.id == id);
    notifyListeners();
  }

  void removeSavedResultAll() {
    _savedResultList.clear();
    notifyListeners();
  }

  Future<bool> saveSavedResultList() async {
    try {
      return await _saverService.saveResult(_savedResultList);
    } catch (e) {
      return false;
    }
  }

  void _loadSavedResultList() async {
    _savedResultList = _saverService.getSavedResultList();
    notifyListeners();
  }

  Question _getQuestionById(int id) =>
      _questionList.firstWhere((e) => e.id == id);

  Answer _getAnswerById(int id) => _answerList.firstWhere((e) => e.id == id);

  Result _getResultById(int id) => _resultList.firstWhere((e) => e.id == id);

  void _setCurQuestionById(int id) {
    _curQuestion = _getQuestionById(id);
    notifyListeners();
  }

  void _serCurAnswerListByQuestionId(int id) {
    _curAnswerList.clear();
    _curQuestion.anserListId.forEach((e) {
      _curAnswerList.add(_getAnswerById(e));
    });
    notifyListeners();
  }

  void _setResultById(int id) {
    _result = _getResultById(id);
    _savedResultList.add(SavedResult.fromResult(_result));
    notifyListeners();
  }
}
