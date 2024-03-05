class Note{
  final String title;
  final String content;
  final DateTime date;

  Note(this.title, this.content, this.date,);
}

List<Note> notes = [
  Note('Title 1', "Content 1", DateTime(2024,2,2)),
  Note('Title 2', "Content 2", DateTime(2024,2,2)),
  Note('Title 3', "Content 3", DateTime(2024,2,3)),
  Note('Title 4', "Content 4", DateTime(2024,2,3)),
];