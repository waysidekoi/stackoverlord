require 'spec_helper'

describe 'current_user' do

  context "a logged in user" do
    before(:each) do
      @current_user = User.create(email: "a@b.com", password:"3", :alias => "wayne")
    end


    it "should be able to write a question" do
      current_user = @current_user
      
      visit questions_ask_path
      # visit '/questions/ask'
      # visit 'questions#now'

      expect {
        fill_in 'question_title', :with => "How do I kill marines?"
        fill_in 'question_details', :with => "they kill anything i make"
        click_button "Post Your Question"
        binding.pry
        }.to change(Question, :count).by(1)

      # raise 
    end

    it "should be able to upvote a question" do
    end

  end
end

