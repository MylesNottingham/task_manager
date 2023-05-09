require "rails_helper"

RSpec.describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns 'true' when the title is 'laundry'" do
        task = Task.create!(title: "laundry", description: "clean clothes")

        expect(task.laundry?).to be(true)
      end

      it "returns 'true' when the description is 'laundry'" do
        task = Task.create!(title: "clean my clothes", description: "laundry")

        expect(task.laundry?).to be(true)
      end

      it "returns 'true' when the title includes 'laundry'" do
        task = Task.create!(title: "do the laundry", description: "clean clothes")

        expect(task.laundry?).to be(true)
      end

      it "returns 'true' when the description includes 'laundry'" do
        task = Task.create!(title: "clean my clothes", description: "do the laundry")

        expect(task.laundry?).to be(true)
      end

      it "returns 'true' when the title includes 'laundry' case insensitively" do
        task = Task.create!(title: "Do the Laundry", description: "Clean my Clothes")

        expect(task.laundry?).to be(true)
      end

      it "returns 'true' when the description includes 'laundry' case insensitively" do
        task = Task.create!(title: "Clean my Clothes", description: "Do the Laundry")

        expect(task.laundry?).to be(true)
      end

      it "returns 'false' if neither title nor description include 'laundry'" do
        task = Task.create!(title: "Clean my Clothes", description: "Wash the Clothes")

        expect(task.laundry?).to be(false)
      end
    end
  end
end
