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
end
