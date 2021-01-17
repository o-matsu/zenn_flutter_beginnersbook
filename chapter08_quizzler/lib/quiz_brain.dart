import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('キリンの睡眠時間は一日6時間である', false),
    Question('パンダは鳴くことがある', true),
    Question('コアラの指には人間のように指紋がある', true),
    Question('ジャイアントパンダのしっぽの色は黒である', false),
    Question('フラミンゴが片足で立っているのはバランスをとるためである', false),
    Question('キリンの舌の色は人間のような赤色である', false),
    Question('ウサギの耳は温度調整する機能がある', true),
    Question('フクロウには耳がない', false),
    Question('鹿の胃は『4つ』ある', true),
    Question('馬は鼻でしか息をしない', true),
    Question('ブルドックの目玉は飛び出してしまうことがある', true),
    Question('シマウマの鳴き声は『ヒヒーン！！』である', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished() {
    bool isFin;
    if (_questionNumber < _questionBank.length - 1)
      isFin = false;
    else
      isFin = true;
    return isFin;
  }

  //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
  //TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
