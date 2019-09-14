RSpec.describe ToyRobot do
    subject { ToyRobot.new }
    
    describe "#move" do
        it "changes the position by 1 space" do 
            expect { subject.move(x: 2) }.to change { subject.position }.from([0, 0]).to([2, 0])
            #Other way: 
            #subject.move(2)
            #expect(subject.position).to eq [2, 0]
        end

    end 

end