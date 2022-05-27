import 'package:get/get.dart';

class QuestionController extends GetxController {

  String groupValue = "";
  int currentIndex = 0;
  List<String> answersList = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    answersList = [];
    super.dispose();
  }

  addAnswer(String answer) {
    answersList.add(answer);

    update();
  }
  updateAnswer(int index,String answer){
    answersList[index]=answer;
    update();

  }

  changeCurrentIndex(int index) {

    currentIndex = index;
    update();
  }

  changeGroupValue(value) {
    groupValue = value;

    update();
  }



}