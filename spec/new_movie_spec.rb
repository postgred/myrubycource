require 'spec_helper.rb'
require 'theaters'

RSpec.describe Theaters::Movie::New do
  before { @films = Theaters::MovieCollection.new('./spec/movies.txt') }
  subject(:movie) { @films.filter(year: 2001...Time.new.year)[0] }

  its(:to_s) { should eq "The Dark Knight - новинка, вышло #{Time.new.year - movie.year} лет назад!" }

  it 'should have a price' do
    expect(movie.price).to eq 5
  end

  its(:period) { should eq :new }
end
