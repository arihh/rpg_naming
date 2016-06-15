require 'spec_helper'

describe RpgNaming do
  let(:names) {
    {
      "players" => ["ゆりしー"],
      "monsters" => ["ゴブリン"],
      "males" => ["ユウ"],
      "females" => ["サツキ"],
    }
  }
  before { RpgNaming.stub(:names).and_return(names) }
  subject { RpgNaming }
  it 'player' do
    expect(subject.player).to eq("ゆりしー")
  end
  it 'monster' do
    expect(subject.monster).to eq("ゴブリン")
  end
  it 'male' do
    expect(subject.male).to eq("ユウ")
  end
  it 'female' do
    expect(subject.female).to eq("サツキ")
  end
  it 'member' do
    expect(subject.member).to eq("サツキ").or eq("ユウ")
  end

  context 'range' do
    let(:names) { {"males" => ["ユウ", "ラスク"]} }
    it 'range' do
      expect(subject.range(2,2).male).to eq("ユウ")
    end
  end
end
