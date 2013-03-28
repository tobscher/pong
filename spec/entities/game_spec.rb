require "game/entities"

describe Game do
  it "should have exactly two players" do
    subject.players[:left].should be_a Player
    subject.players[:right].should be_a Player
  end

  it "should have a score for each player" do
    subject.scores[:left].should == 0
    subject.scores[:right].should == 0
  end

  it "should increase the score if either of the players wins a round" do
    subject.score(:left)
    subject.scores[:left].should == 1

    subject.score(:right)
    subject.score(:right)
    subject.scores[:right].should == 2
  end
end
