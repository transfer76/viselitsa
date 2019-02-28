require 'game'

describe 'Game' do
  it 'should user wins the game' do
    game = Game.new('слово')
    expect(game.status).to eq :in_progress
    game.next_step('с')
    game.next_step('о')
    game.next_step('в')
    game.next_step('л')
    expect(game.errors).to eq 0
    expect(game.status).to eq :won
  end

  it 'should user looses the game' do
    game = Game.new('слово')
    game.next_step('а')
    game.next_step('б')
    game.next_step('г')
    game.next_step('д')
    game.next_step('е')
    game.next_step('ж')
    game.next_step('з')
    game.next_step('и')
    expect(game.errors).to eq 7
    expect(game.status).to eq :lost
  end
end
