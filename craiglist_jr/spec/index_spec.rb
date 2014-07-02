require 'spec_helper'

# For testing your controller. Use RSpec and Rack/Test for testing your routes in index.rb


describe "Index (this is a skeleton index.rb test!)" do

  describe 'craiglist jr' do
    # Here is a sample GET test for you to study
    it "should route to home page" do
      get "/", { ?????? }
      expect(?????? ).to include("Welcome to Craiglist Jr")
    end
    # Can you think of more meaningful GET tests to write?
  end

  describe 'post' do
    # Here is a sample POST test for you to study - modify for your code.
    it "should return a response for uppercase" do
      post '/grandma', { user_input: "HI GRANDMA" }
      expect(last_response.location).to include("NOT SINCE 1979")
    end

    it 'should return a response for lowercase' do
     pending
      # Write your POST test here
    end
  end

   describe 'secret_code' do
    # Here is a sample POST test for you to study - modify for your code.
    it "should return a secret url code" do
      post '/grandma', { user_input: "HI GRANDMA" }
      expect(last_response.location).to include("NOT SINCE 1979")
    end

    it 'should return a response for lowercase' do
     pending
      # Write your POST test here
    end
  end


end