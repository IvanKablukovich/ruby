require "ex47/game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

    def test_room()
        final = Room.new("FinalRoom", "This final room.")
        assert_equal("FinalRoom", final.name)
        assert_equal({}, final.paths)
    end

    def test_room_paths()
        in_house = Room.new("InHouse", "Wood house.")
        death = Room.new("Death", "You lose.")
        final = Room.new("Final", "You won.")

        in_house.add_paths({'death'=> death, 'final'=> final})
        assert_equal(death, in_house.go('death'))
        assert_equal(final, in_house.go('final'))

    end

    def test_map()
        start = Room.new("Start", "You can go left and path throuh trees.")
        left = Room.new("Bear", "There are bear.")
        path = Room.new("Path through trees", "It's path.")
        house = Room.new("House", "Wood house")


        start.add_paths({'left'=> left, 'path'=> path})
        left.add_paths({'back'=> start})
        path.add_paths({'house'=> house})

        assert_equal(path, start.go('path'))
        assert_equal(house, start.go('path').go('house'))
        assert_equal(left, start.go('left'))
    end
end
