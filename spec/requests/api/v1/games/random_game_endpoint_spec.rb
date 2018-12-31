# frozen_string_literal: true

require 'rails_helper'

describe '/api/v1' do
  context 'GET /games/random' do
    it 'returns a single random question' do
      questions = create_list(:question, 10)

      get '/api/v1/games/random-game'
      result = JSON.parse(response.body, symbolize_names: true)
      
      expect(result[:questions]).to all(have_key(:question))
      expect(result[:questions]).to all(have_key(:correct_answer))
      expect(result[:questions]).to all(have_key(:answers))
      expect(result[:questions]).to all(have_key(:image_url))
      expect(result[:questions]).to all(have_key(:image_url))
      expect(result[:questions]).to all(have_key(:image_author))
      expect(result[:questions]).to all(have_key(:image_author_profile))
    end
  end
end
