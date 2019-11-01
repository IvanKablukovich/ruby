require 'ex48/lexicon.rb'
require "test/unit"

class TestLexicon < Test::Unit::TestCase

  @@lexicon = Lexicon.new

  def test_directions()
    assert_equal(@@lexicon.scan("north"), [['direction', 'north']])
    result = @@lexicon.scan("north south east")

    assert_equal(result, [['direction', 'north'],
           ['direction', 'south'],
           ['direction', 'east']])
  end

  def test_verbs()
    assert_equal(@@lexicon.scan("go"), [['verb', 'go']])
    result = @@lexicon.scan("go kill eat")
    assert_equal(result, [['verb', 'go'],
           ['verb', 'kill'],
           ['verb', 'eat']])
  end


  def test_stops()
    assert_equal(@@lexicon.scan("the"), [['stop', 'the']])
    result = @@lexicon.scan("the in of")
    assert_equal(result, [['stop', 'the'],
           ['stop', 'in'],
           ['stop', 'of']])
  end


  def test_nouns()
    assert_equal(@@lexicon.scan("bear"), [['noun', 'bear']])
    result = @@lexicon.scan("bear princess")
    assert_equal(result, [['noun', 'bear'],
           ['noun', 'princess']])
  end

  def test_numbers()
    assert_equal(@@lexicon.scan("1234"), [['number', 1234]])
    result = @@lexicon.scan("3 91234")
    assert_equal(result, [['number', 3],
           ['number', 91234]])
  end


  def test_errors()
    assert_equal(@@lexicon.scan("ASDFADFASDF"), [['error', 'ASDFADFASDF']])
    result = @@lexicon.scan("bear IAS princess")
    assert_equal(result, [['noun', 'bear'],
           ['error', 'IAS'],
           ['noun', 'princess']])
  end

end
