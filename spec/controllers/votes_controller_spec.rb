require 'spec_helper'

describe VotesController do

  describe "GET 'put'" do
    it "returns http success" do
      get 'put'
      response.should be_success
    end
  end

end
