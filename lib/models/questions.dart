// ignore_for_file: constant_identifier_names

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.options,
      required this.answer});
}

const List sample_data = [
  {
    "id": 1,
    "question": "What is the capital of Germany ______",
    "options": ['Berlin', 'Paris', 'Liverpool', 'Cairo'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "What is the name of the current Saudi crown prince _____",
    "options": [
      'Ahmad bn Salman',
      'Khlead bn Salman',
      'Mohamad bn Salman',
      'Fahd bn Salman'
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Where is New Delhi located _____",
    "options": ['China', 'India', 'Jaban', 'Bakstan'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question":
        "What is the name of the leader of the French campaign against Egypt ____",
    "options": [
      'Napoleon Bonaparte',
      'Brad Bit',
      'Maechile jackson',
      'Ahmad Ali'
    ],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "In what year was the Suez Canal founded _____",
    "options": ['1953', '1954', '1955', '1956'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "Who won the World Cup in 1998 _____",
    "options": ['Faranc', 'Germany', 'Brazel', 'Italy'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Who is the last of the Othoman sultans _____",
    "options": [
      'Suliman Kanone',
      'Salem al thane',
      'Mehmed Vahideddin',
      'Abd Alhamed'
    ],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "In what year was the internet invented _____",
    "options": ['1982', '1983', '1984', '1985'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "What is the name of the current US president _____",
    "options": ['Obama', 'Trmp', 'Baiedn', 'Bosh'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Where was the 2002 World Cup held _____",
    "options": ['Russia', 'Jabance', 'Us', 'Germany'],
    "answer_index": 3,
  },
];
