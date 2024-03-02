class Question {
  final String id;
  final String title;
  final List Option;

  Question({
    required this.id,
    required this.title,
    required this.Option,
  });

  @override
  String toString() {
    return 'Question(id:$id, title:$title,option:$Option)';
  }
}

List<Question> quistion =[
  Question(id: '1', title: 'Little interest or pleasure in doing things',
      Option: [
        'Not at all',
        'Several days',
        'More than half of the days',
        'Nearly every day'
      ]),
  Question(
      id: '2',
      title: ' Feeling down, depressed, or hopeless',
      Option: [
        'Not at all',
        'Several days',
        'More than half of the days',
        'Nearly every day',
      ]),

  Question(id: '3',  title: 'Trouble falling or staying asleep, or sleeping too much ',
      Option: [
        'Not at all',
        'Several days',
        'More than half of the days',
        'Nearly every day',
      ]),
  Question(id: '4',  title: 'Feeling bad about yourself - or that you are a failure or have let yourself or your family down',
      Option: [
        'Not at all',
        'Several days',
        'More than half of the days',
        'Nearly every day',
      ]),
  Question(
      id: '5',
      title: 'Moving or speaking so slowly that other people could have noticed ',
      Option: [
        'Not at all',
        'Several days',
        'More than half of the days',
        'Nearly every day',
      ]),


];
