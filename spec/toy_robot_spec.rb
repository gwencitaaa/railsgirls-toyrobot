RSpec.describe ToyRobot do
  subject { described_class.new }

  describe "#initialize" do

    context "when a position is specified" do
      subject { described_class.new(x: 2, y: 3, direction: :north) }
      it "sets the initial position and direction robot is facing" do
        aggregate_failures do
          expect(subject.position).to eq [2, 3]
          expect(subject.direction).to eq :north
        end
      end
    end

    context "when no position is specified" do
      it "starts at the origin facing North" do
        aggregate_failures do
          expect(subject.position).to eq [0, 0]
          expect(subject.direction).to eq :north
        end
      end
    end

    context "when an invalid direction is given" do
      it "raises an error" do
        expect { described_class.new(direction: :foo) }.to raise_error
      end
    end
  end

  describe "#move" do
    context "when facing North" do
      subject { described_class.new(direction: :north) }
      it "it moves up one space" do
        expect { subject.move }.to change { subject.position }.from([0, 0]).to([0, 1])
      end
    end

    context "when facing South" do
      subject { described_class.new(y: 2, direction: :south) }
      it "it moves down one space" do
        expect { subject.move }.to change { subject.position }.from([0, 2]).to([0, 1])
      end
    end

    context "when facing East" do
      subject { described_class.new(direction: :east) }
      it "it moves right one space" do
        expect { subject.move }.to change { subject.position }.from([0, 0]).to([1, 0])
      end
    end

    context "when facing West" do
      subject { described_class.new(x: 2, direction: :west) }
      it "it moves left one space" do
        expect { subject.move }.to change { subject.position }.from([2, 0]).to([1, 0])
      end
    end
  end
end
