# Reference list
# GitHub Link
[GitHub Repo](https://github.com/kimbstocker/KimStocker_T1A3)
## Help Guide
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements
# Software Development Plan
## Purpose
In recent years, devices such as computers, phones, calculators etc. have done extremely well at taking over the role of processing and solving mathematical problems for humans. However, learning and understanding math is still evidently an important skill for our everyday life. Mathematics, particularly mental arithmetic operations calculations are also known to help increase the human’s brain capacity. Daily brain exercises such as learning a new language, playing Sudoku, playing Chess etc. are also proven to reduce the risk of having alzheimer's disease. This Math Quiz App is developed with the hope to help engaging kids as well as adults in practicing and challenging themselves at mental arithmetic operations (except division). And as a result, improving their intelligence and brain's capacity. 
## Scope
This application is designed for school age children as well as anyone who love Math and wants to practice solving arithmetic operations (except division) using their brain instead of a calculator. 
Users are invited to download and install the application package that include Ruby and Ruby gems installation.
There are 3 difficulty levels ranking from easy, medium to hard. Users will need to answer 10 questions and they will see their score for each question as well as their overall score at the end of the Quiz. Users can use the help guide to choose one of the level by entering it on the command line or follow the prompt if they run the app manually.

Once a user run the appliction and chose the difficulty level, they will:

- See the first question of the quiz. 
- The user will then need to enter their answer.
- If the user enter anything other than a number, they will be prompted with a message that the answer entered is invalid and they should enter a different answer that contain a number only.
- If the user enter a valid answer (a number), they will see if their answer is right or wrong as well as the next question of the quiz. They will also see an option to quit (enter q to quit) the program at each displayed question.
- This process will be repeated for a total of 10 questions.
- After answering the 10th question, the user will see their score card. 
- They will also see option to save the score card if they finish all 10 questions ("yes" or "no" options). This option will not be displayed when the user quit in the middle of the quiz. 
- If the user choose to save the scorecard as a file, (they must enter "yes". If they enter anything other than "yes" or "no", an error message will pop up and ask them to enter either "yes" or "no" only) a file will be created and saved in the "Scorecards" folder and a message with the file location will be displayed to the user.
- The user will then see options to go to the next level (enter the level number 1 or 2 or 3) or to quit the program (enter q to quit). Any input other than 1,2,3,q will return an error message that tells the user to choose the valid input only.
- The program continue to run unless the user chose "q" to exit the program.
## Features
### Feature 1: The Quiz
This feature contains 10 randomly generated arithmetic operations questions and users can input their answers. The answers provided will then be checked by the system for scoring. Users will see if their answers are right(green) or wrong(red) after submitting their answer to each question. At the end of the quiz, scores will be tallied up and displayed to the user.
### Feature 2: Difficulty Levels
Users are offered with 3 quizzes with 3 difficulty levels
- Easy: each question in this level will be randomly generated from 2 arithmetic operators (either +, -, *), 2 single digit numbers and 1 double digit number. 
- Medium: this level include random questions with 2 arithmetic operators (either +, -, *), 1 single digit number and 2 double digit numbers.
- Hard: each question in this level will contain 3 arithmetic operators (either +,-,* or **), 1 single digit number, 2 double digit numbers and 1 triple digit number.
### Feature 3: Printing Scorecard
Once finished their quiz, users can print out their scorecard that list out all 10 questions, the correct answers, their answers and their scores for each questions as well as their overall score.
## Control Flow Diagram
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.
## Software Developement Plan and Implementation
- outlines how each feature will be implemented and a checklist of tasks for each feature
  ![Trello Board](docs/TrelloHome.png "TrelloBoard")
  ![Trello Difficulty Level Feature](docs/TrelloDifficultyLevel.png "DifficultyLevelFeature")
  ![Trello The Quiz Feature](docs/TrelloTheQuiz.png "TheQuizFeature")
  ![Trello Printing Scorecard Feature](docs/TrelloPrintingScorecard.png "PrintingScorecardFeature")
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item
-  Your checklists for each feature should have at least 5 items.
  

