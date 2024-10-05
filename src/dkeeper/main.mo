import List "mo:base/List";
import Debug "mo:base/Debug";

actor DKeeper {
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
    Debug.print(debug_show(notes));
  };

  //func toArray<T>(xs : List<T>) : [T]
  public query func readNotes(): async [Note] {
    return List.toArray(notes);
  };

public func removeNote(id: Nat) {
    //func take<T>(l : List<T>, n : Nat) : List<T>
  let listFront = List.take(notes, id);
    //func drop<T>(l : List<T>, n : Nat) : List<T>
  let listBack = List.drop(notes, id + 1);
    //func append<T>(l : List<T>, m : List<T>) : List<T>
  notes := List.append(listFront, listBack);
};
}
