import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnimalQuiz{
  var images =[
   "cat","dog"
  ];
  var question =[
    "What is this _______?",
    "This is a _____"
  ];
  var choices =[
   ["Cat","Dog","Sheep","Cow"],
   ["Snail","Dog","Slug","Hawk"]
   
  ];
  var correctAnswers =[
    "Cat","Dog"
  ];
}

  var number  = new Random();
  var qtnumberrandom = number.nextInt(3);


var finalScore =0;
var questionNumber =0;
var quiz = new AnimalQuiz();

class Quiz3 extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz3> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        //backgroundColor: Colors.blue[10],
        body: new Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          
          child: new Column(
            children: <Widget>[
              
              new Padding(padding: EdgeInsets.all(20.0),),

              new Container(
                alignment: Alignment.centerRight,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                   new Text("ຄຳຖາມທີ ${questionNumber + 1} ຈາກ ${quiz.question.length}",
                   style: new TextStyle(
                     fontSize: 22.0,
                  
                   ),
                   ),

                   new Text("ຄະແນນ: $finalScore",
                       style: new TextStyle(
                     fontSize: 22.0,
                    
                   ),
                   ),
     
                  ],
                ),
              ),

              new Padding(padding: EdgeInsets.all(10.0),),
              new Image.asset(

                "images/${quiz.images[questionNumber]}.jpg",
            
              ),
              new Padding(padding: EdgeInsets.all(10.0),),
              new Text(quiz.question[questionNumber],
              style: new TextStyle(
                fontSize: 20.0,
               
              ),
              ),

              new Padding(padding: EdgeInsets.all(10.0),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //button1
                  new MaterialButton(
                    minWidth: 150.0,
                    color: Colors.green,
                    onPressed: (){

                      if (quiz.choices[questionNumber][0]== quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore+=10;
                      }else{
                        debugPrint("Wrong");
                      }
                      updateQuestion();

                    },
                    child: new Text(quiz.choices[questionNumber][qtnumberrandom],
                     style: new TextStyle(
                     fontSize: 20.0,
                     color: Colors.white
                     ),),
                    ),

                    //Button2
                       new MaterialButton(
                    minWidth: 150.0,
                    color: Colors.green,
                    onPressed: (){

                      if (quiz.choices[questionNumber][1]== quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        
                        finalScore+=10;
                      }else{
                        debugPrint("Wrong");
                      }
                      updateQuestion();

                    },
                    child: new Text(quiz.choices[questionNumber][qtnumberrandom],
                     style: new TextStyle(
                     fontSize: 20.0,
                     color: Colors.white
                     ),),
                    ),
                ],
              ),

                new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //button3
                  new MaterialButton(
                    minWidth: 150.0,
                    color: Colors.green,
                    onPressed: (){

                      if (quiz.choices[questionNumber][2]== quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore+=10;
                      }else{
                        debugPrint("Wrong");
                      }
                      updateQuestion();

                    },
                    child: new Text(quiz.choices[questionNumber][qtnumberrandom],
                     style: new TextStyle(
                     fontSize: 20.0,
                     color: Colors.white
                     ),),
                    ),

                    //Button4
                       new MaterialButton(
                    minWidth: 150.0,
                    color: Colors.green,
                    onPressed: (){

                      if (quiz.choices[questionNumber][3]== quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore+=10;
                      }else{
                        debugPrint("Wrong");
                      }
                      updateQuestion();

                    },
                    child: new Text(quiz.choices[questionNumber][qtnumberrandom],
                     style: new TextStyle(
                     fontSize: 20.0,
                     color: Colors.white
                     ),),
                    ),
                ],
              ),
             new Padding(padding: EdgeInsets.all(30.0),),
             new Container(
               alignment: Alignment.bottomCenter,
               child: new MaterialButton(
                 color: Colors.red,
                 minWidth: 250.0,
                 height: 30.0,
                 onPressed: resetQuiz,
                 child: new Text("ກັບຄືນ",
                 style: new TextStyle(
                     fontSize: 20.0,
                     color: Colors.white
                     ),),
               ),
             ),





            ],
          ),
        ),
      ),
      
    );
  }
  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore =0;
      questionNumber=0;
    });

  }
  void updateQuestion(){
  setState(() {
    if (questionNumber == quiz.question.length -1){
      Navigator.push(context, new MaterialPageRoute(builder: (context) => new Summary(score: finalScore )));
      AlertDialog();
    }else{
      questionNumber++;
    }
  });
}
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key key,@required this.score}) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new WillPopScope(
      onWillPop: ()async =>false,
      
      child: Scaffold(
      backgroundColor: Colors.blue[200],
        body: new Container(
          margin: const EdgeInsets.all(5.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            
            children: <Widget>[
              AlertDialog(
                 
                 content: SingleChildScrollView(
                 child: ListBody(
                 children: <Widget>[
                     Icon(
                        Icons.sentiment_very_satisfied,
                        size: 60.0,
                        color: Colors.orange,
                      ),
                    new Padding(padding: EdgeInsets.all(10.0),),
                    new Text("ຄະແນນທັງໝົດ : $score",
                     style: new TextStyle(
                     fontSize: 25.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.green
                     ),),
              
            ],
          ),
        ),
        actions: <Widget>[
                     new Padding(padding: EdgeInsets.all(1),),
                     new MaterialButton(
                        minWidth: 250.0,
                       color: Colors.blue,
                       onPressed: (){
                         questionNumber = 0;
                         finalScore = 0;
                         Navigator.pop(context);
                       },

                       child: new Text("ເລີ່ມໃໝ່",
                          style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                     ),),
                     ),
               ]
           )
              // new Text("ທ່ານໄດ້ຄະແນນລວມທັງໝົດ : $score",
              //   style: new TextStyle(
              //        fontSize: 20.0,
              //        color: Colors.red
              //        ),),

              //        new Padding(padding: EdgeInsets.all(10.0),),
              //        new MaterialButton(
              //          color: Colors.red,
              //          onPressed: (){
              //            questionNumber = 0;
              //            finalScore = 0;
              //            Navigator.pop(context);
              //          },

              //          child: new Text("ເລີ່ມໃໝ່",
              //             style: new TextStyle(
              //             fontSize: 20.0,
              //             color: Colors.white
              //        ),),

              //  ),
            ],
          ),
        ),
      ),
    );
  }
  
}




