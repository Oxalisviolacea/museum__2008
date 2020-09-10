require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'

class MuseumTest < Minitest::Test
  def test_it_exists
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_instance_of Museum, patron_1
  end

  def test_it_has_attributes
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal "Denver Museum of Nature and Science", dmns.name
  end
end