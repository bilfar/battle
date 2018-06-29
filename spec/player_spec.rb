require 'player'

describe Player do
let(:bob) { Player.new("Bob") }
  it "should return a name" do
    expect(bob.name).to eq("Bob")
  end

end
