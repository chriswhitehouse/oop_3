require "todo_list"

describe TodoList do
  let(:todo) { double :todo, description: "say hi", complete: false, completed_as_string: "not complete", set_complete: true }
  let(:todo_class) { double(:todo_class, new: todo) }

  let(:todo_2) { double :todo, description: "say howdy", complete: false, completed_as_string: "not complete" }
  let(:todo_class_2) { double(:todo_class, new: todo_2) }

  let(:todo_3) { double :todo, description: "say yo", complete: false, completed_as_string: "not complete" }
  let(:todo_class_3) { double(:todo_class, new: todo_3) }

  describe "creation" do
    it "creates a list with no todos" do
      expect(subject.get(0)).to be_nil
    end
  end

  describe "adding a todo" do
    it "stores a todo with a description" do
      expect(todo_class).to receive(:new)
      subject.add("say hi", todo_class)
      expect(subject.get(0)).to eq(todo)
    end
  end

  describe "getting a todo" do
    it "gets a todo at an index" do
      subject.add("say hi", todo_class)
      expect(subject.get(0)).to_not be_nil
    end
  end

   describe "showing todos as a string" do
     it "shows a list of 3 todos" do
       subject.add("say hi", todo_class)
       subject.add("say howdy", todo_class_2)
       subject.add("say yo", todo_class_3)

       expect(subject.to_string).to eq("1. say hi not complete\n2. say howdy not complete\n3. say yo not complete")
     end
  end

  describe "setting a todo to be complete" do
    it "sets a todo to be complete" do
      subject.add("say hi", todo_class)

      expect(subject.set_complete(0)).to eq(true)
    end
  end
end
