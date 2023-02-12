import 'package:rock_paper_scissors/constants.dart';
import 'package:rock_paper_scissors/screens/game.dart';

const int rock = 1;
const int paper = 2;
const int scissors = 3;

class GameBrain {
  int? _ai;
  final Choice choice;
  final int aiChoice;

  GameBrain({
    required this.choice,
    required this.aiChoice,
  });

  int getAiChoice() {
    return aiChoice;
  }

  Choice getHumanChoice() {
    return choice;
  }

  String getAiImageChoice() {
    _ai = getAiChoice();
    if (_ai == rock) {
      return kRock;
    } else if (_ai == paper) {
      return kPaper;
    } else {
      return kScissors;
    }
  }

  String checkWinner() {
    _ai = getAiChoice();
    getAiImageChoice();
    getHumanChoice();
    if (_ai == rock && getHumanChoice() == Choice.rock) {
      return "It is a tie";
    } else if (_ai == rock && getHumanChoice() == Choice.paper) {
      return 'You are a winner';
    } else if (_ai == rock && getHumanChoice() == Choice.scissors) {
      return 'AI is a winner';
    } else if (_ai == paper && getHumanChoice() == Choice.rock) {
      return "AI is a winner";
    } else if (_ai == paper && getHumanChoice() == Choice.paper) {
      return 'It is a tie';
    } else if (_ai == paper && getHumanChoice() == Choice.scissors) {
      return 'You are a winner';
    } else if (_ai == scissors && getHumanChoice() == Choice.rock) {
      return "You are a winner";
    } else if (_ai == scissors && getHumanChoice() == Choice.paper) {
      return 'AI is a winner';
    } else if (_ai == scissors && getHumanChoice() == Choice.scissors) {
      return 'It is a tie';
    } else {
      return '';
    }
  }
}
