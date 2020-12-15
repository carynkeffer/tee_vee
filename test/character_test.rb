require 'minitest/pride'
require 'minitest/autorun'
require './lib/character'

class CharacterTest < Minitest::Test
  def test_it_exists_and_has_attributes
    kitt = Character.new({
                        name: "KITT",
                        actor: "William Daniels",
                        salary: 1_000_000
                        })

    assert_instance_of Character, kitt
    assert_equal "KITT", kitt.name
    assert_equal "William Daniels", kitt.actor
    assert_equal 1000000, kitt.salary
  end
end
