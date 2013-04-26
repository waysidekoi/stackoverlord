require "spec_helper"

describe Vote do
  let (:vote) { Vote.create }

  describe '#initialize' do
    it "should be an object of the Vote class" do
      vote.should be_an_instance_of(Vote)
    end
  end

  describe '#upvote!' do
    it "should be able to increase its status by 1" do
      vote.upvote!
      vote.status.should be(1)  
    end
  end

  describe '#downvote!' do
    it "should decrease its status by 1" do
      vote.downvote!

      vote.status.should be(-1)
    end
  end

  describe '#nullify_vote!' do
    it "should decrease its status by 1" do
      vote.nullify_vote!

      vote.status.should be(0)
    end
  end


  context 'i love associations' do
    it 'should belong to a user' do
      Vote.reflect_on_association(:user).macro.should be :belongs_to
    end
    it 'should belong to votable' do
      Vote.reflect_on_association(:votable).macro.should be :belongs_to
    end
    it 'should be polymorphic' do
      Vote.reflect_on_association(:votable).options[:polymorphic].should be_true
    end
  end

  describe '#status' do
    it 'should have a default status of 0' do
      vote.status.should be_zero
    end
  end
end
