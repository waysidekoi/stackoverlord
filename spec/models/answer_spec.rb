describe Answer do


  let(:answer1) { Answer.create(details: "This is the details") }
  let(:answer2) { Answer.create(details: "This is the 2nd answer details") }

  describe '#initialize' do

    context 'when created without details' do
      subject { Answer.create } 
      
      it { should raise_error }
    end

    context 'when created with details' do
      subject { Answer.create(details: "answer here") } 

      it { should be_valid }
    end
  end

  describe '#score' do
    before(:each) { @vote1 = double(answer1.votes.create)
      @vote2 = double(answer1.votes.create)
      @vote3 = double(answer2.votes.create)

      @vote1.stub(status: 1)
      @vote2.stub(status: -1)
      @vote3.stub(status: 0) 
    }

    it "should have a score of 0" do
      answer1.score.should be_zero
    end
  end
end
