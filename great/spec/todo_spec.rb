require "todo"

describe Todo do
  describe "creation" do
    subject { described_class.new("say hi") }

    it "creates a todo" do
      expect(subject).to be_instance_of described_class
    end

    it "records description" do
      expect(subject.description).to eq "say hi"
    end

    it "records completed status" do
      expect(subject.completed).to eq false
    end
  end

  describe "setting a todo to be complete" do
    subject { described_class.new("say hi") }

    it "sets a todo to be complete" do
      expect(subject.completed).to eq false
      subject.set_complete
      expect(subject.completed).to eq true
    end
  end

  describe "converting complete to a string" do
    subject { described_class.new("say hi") }

    it 'should convert complete false to string \"not complete"' do
      expect(subject.completed_as_string).to eq "not complete"
    end
  end
end
