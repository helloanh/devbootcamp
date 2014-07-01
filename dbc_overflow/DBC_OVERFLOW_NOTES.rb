# DBC OVERFLOW LECTURE NOTES
# shortcut:
  rails _3.2.13_ new dbc_overflow -T -d postgresql
  git commit -av
#--------------------------------

#model --------------
class Question < ActiveRecord::Base
end


# migration ------------
# rails g migration CreateQuestions title:string body:text

class Questions
  t.string  title
  t.text   body
  t.timestamps
end

# controller ------------
DbcOverflow::Application.routes.draw do
  resources :questions
end

class QuestionsController < ApplicationController


# ----- make spec ---------
# in Gemfiel: gem 'rspec'
#  rails g rspec:install
#  make controllers, models test

require 'spec_helper'

describe QuestionsController do
  # describe "GET index" do
  #   it "supports a GET on an index" do
  #     get :index
  #     expect(response).to_be_success
  #   end
  # end
  #
  render_views  #placement matter put it before the test

  context "working with the index route" do
    let(:question) {Question.create title: "Test", body: "This is a test question"}
    it "responds to a GET" do
      get :index
      expect(response).to_be_success
    end

    it "print a list of all questions" do
      count_of_questions = Questions.count
      get :index
      expect(response.body).to match(/TotalCount: #{count_of_questions}/)
    end

    it "has the body of the test quesiton" do
      get :index
      #puts Question.all.map(&body)
      #puts questions.expect # to test
      expect(response.body).to match(/a test question/)
    end
end

# ----- rake db:test:prepare

# view/questions/index.html.erb
# template changes after setting the testing conditions

# for test question two
<p> Total Questions: <%= Question.count %> </p>


# for test question three
<% Question.all.each do |q| %>
  <p><%= q.body %></p>
<% end %>


 # --- now refactor the view
 # from Question.all.each to @question

# --- in controller
 class QuestionsController
  def index
    @questions = Question.all
  end
end

# --- view/questions/index.html.erb again

<p> Total Questions: <%= Question.count %> </p>
<% @questions.each do |q| %>
  <pre> <%= @questions.inspect %> </pre>  # just for debuggin

   # this render a partial, question dont need underscore
  # <%= render  "question", object: q %>
   <%= render partial: "question", object: q %>
<% end %>

#-- view/questions/_question.html.erb
<%= @questions.body %>

# ------------------


