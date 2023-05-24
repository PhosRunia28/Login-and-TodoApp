class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> todoList() {
    return [
      Todo(id: "01", todoText: "Olahraga Pagi", isDone: true),
      Todo(id: "02", todoText: "Beli Makanan", isDone: true),
      Todo(id: "03", todoText: "Melawan Titan Bersama Eren"),
      Todo(id: "04", todoText: "Saitaman lawan Goku"),
      Todo(id: "05", todoText: "Buat Todo App"),
      Todo(id: "06", todoText: "OnePiece Gak Seru"),
    ];
  }
}
