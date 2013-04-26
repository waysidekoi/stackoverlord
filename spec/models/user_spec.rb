require 'spec_helper'

describe User do
<<<<<<< HEAD

=======
  let (:user) { User.create(email: "a@b.com", password:"3", :alias => "wayne") }
  it "should create a user when passed good email, password, and alias parameters" do
    user.should be_an_instance_of(User)
  end

  context "given a user already exists" do
    before { User.create(email: "a@b.com", password:"3", :alias => "wayne") }
    it "should not let two users with the same email be created" do
      expect { User.create(email: "a@b.com", password:"3", :alias => "george") }.to change{ User.count }.by(0)
    end
    it "should not let two users with the same alias be created" do
      expect { User.create(email: "example@example.com", password:"3", :alias => "wayne") }.to change{ User.count }.by(0)
    end
  end

  it "should require a password" do
    expect { User.create(email: "this@email.com", :alias => "eric") }.to change{ User.count }.by(0)
  end

  it "should require an alias" do
    expect { User.create(email: "this@email.com", password: "xab") }.to change{ User.count }.by(0)
  end

  it "should require a valid email" do
    expect { User.create(email: "@d@f@@@s@@@@@@@", :alias => "eric", password: "xab") }.to change{ User.count }.by(0)
  end
>>>>>>> master
end
