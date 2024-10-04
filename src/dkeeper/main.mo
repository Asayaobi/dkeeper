import List "mo:base/List";

actor {
  public type Note = {
    title: Text;
    content: Text;
  };
    var notes: List.List<Note> = List.nil<Note>();
      public func createNote(titleText: Text, contentText: Text) {
    let newNote: Note = {
      title = titleText;
      content = contentText;
    };

    //func push<T>(x : T, l : List<T>) : List<T>
    notes:= List.push(newNote, notes);
  }
}
