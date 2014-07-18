require_relative '../lib/book.rb'

describe "book" do
  describe 'title' do
    it 'should capitalize the first letter' do
      Book.new.title = "dune"
      Book.new.should.eql "Dune"
    end
  end
end