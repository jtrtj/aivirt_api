require 'rails_helper'

describe Game do
  context 'relationships' do
    it { should have_many(:questions).through(:game_questions) }
  end

  context 'class methods' do
    it '.most_recent' do
      game_1 = create(:game, created_at: Date.today)
      game_2 = create(:game, created_at: Date.yesterday)

      expect(Game.most_recent).to eq(game_1)
    end
  end

  context 'instance methods' do
    it '#jsonable_hash' do
      game = create(:game, created_at: Date.today)
      game_data = game.jsonable_hash

      expect(game_data[:id]).to eq(game.id)
      expect(game_data[:date]).to eq(game.created_at.strftime("%b %d, %Y"))
      expect(game_data[:questions]).to be_an(Array)
      expect(game_data[:questions][0]).to have_key(:question)
      expect(game_data[:questions][0]).to have_key(:correct_answer)
      expect(game_data[:questions][0][:answers]).to be_an(Array)
      expect(game_data[:questions][0]).to have_key(:image_url)
      expect(game_data[:questions][0]).to have_key(:image_url)
      expect(game_data[:questions][0]).to have_key(:image_author)
      expect(game_data[:questions][0]).to have_key(:image_author_profile)
    end
  end
end