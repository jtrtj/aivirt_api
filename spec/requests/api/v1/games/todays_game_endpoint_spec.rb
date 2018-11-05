require 'rails_helper'

describe '/api/v1' do
  context 'GET /games/todays_game' do
    it "returns today's game with it's 10 questions" do
      game_1 = create(:game, created_at: Date.today)
      game_2 = create(:game, created_at: Date.yesterday)

      get '/api/v1/games/todays-game'
      result = JSON.parse(response.body, symbolize_names: true)

      expect(result[:id]).to eq(game_1.id)
      expect(result[:date]).to eq(game_1.created_at.strftime("%b %d, %Y"))
      expect(result[:questions][0]).to have_key(:question)
      expect(result[:questions][0]).to have_key(:correct_answer)
      expect(result[:questions][0][:answers]).to be_an(Array)
      expect(result[:questions][0]).to have_key(:image_url)
      expect(result[:questions][0]).to have_key(:image_url)
      expect(result[:questions][0]).to have_key(:image_author)
      expect(result[:questions][0]).to have_key(:image_author_profile)
    end
  end
end
