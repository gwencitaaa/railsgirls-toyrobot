RSpec.describe ToyRobot do
  subject { described_class.new }
  
  describe "#initialize" do 
    
    context "when a position is specified" do 
      subject { described_class.new(x: 2, y: 3, direction: :north) }
      it "sets the inital position and direction robot is facing" do
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

    context "when robot is facing north" do
      subject { described_class.new(direction: :north) }
      it "moves up by 1 space" do 
        expect { subject.move }.to change { subject.position }.from([0, 0]).to([0, 1])
      end
    end
    
    context "when robot is facing south" do
      subject { described_class.new(y: 2, direction: :south) }
      it "moves down by 1 space" do 
        expect { subject.move }.to change { subject.position }.from([0, 2]).to([0, 1])
      end
    end
    
    context "when robot is facing east" do
      subject { described_class.new(direction: :east) }
      it "moves right by 1 space" do 
        expect { subject.move }.to change { subject.position }.from([0, 0]).to([1, 0])
      end
    end
    
    context "when robot is facing west" do
      subject { described_class.new(x: 2, direction: :west) }
      it "moves left by 1 space" do 
        expect { subject.move }.to change { subject.position }.from([2, 0]).to([1, 0])
      end
    end
  end 

end