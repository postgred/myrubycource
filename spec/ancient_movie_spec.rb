require 'spec_helper.rb'
require_relative '../movies.rb'

RSpec.describe AncientMovie do
  before { @films = MovieCollection.new('./spec/movies.txt') }
  subject(:movie) { @films.filter(year: 1900..1945)[0] }

  its(:to_s) { should eq "#{movie.title} - старый фильм (#{movie.year} год)" }
end
