require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:session_token) }

  before :each do 
    let!(:user) { create(:user) }
  end

  describe "::find_by_credentials" do

    it "should return the user whose credentials match the input" do
      expect(User.find_by_credentials(user.username, 'starwars')).to be(user) 
    end

    it "should not return user if the username is correct but the password is not" do 
      expect(User.find_by_credentials(user.username, 'startrek')).to be(nil)
    end 
  end

  describe "#password=" do

    it "should set the user's password to the input" do
      # expect()
    end

    it "should reject passwords with length less than 6" do

    end

  end


end