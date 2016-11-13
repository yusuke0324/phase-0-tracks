require_relative 'guess_word'

describe GuessWord do
  let(:game){GuessWord.new("test")}


  it "checks if a charctor is in the word" do
    expect(game.guessed_word).to eq ("____")
    expect(game.check_char("t")).to eq (true)
    expect(game.guessed_word).to eq ("t__t")
  end

  it "checks if charctor is NOT in the word" do
    expect(game.guessed_word).to eq ("____")
    expect(game.check_char("r")).to eq (false)
    expect(game.guessed_word).to eq ("____")
  end

  it "find indecise the charctor in the word" do
    expect(game.get_indices("test","t")).to eq([0,3])
  end

end