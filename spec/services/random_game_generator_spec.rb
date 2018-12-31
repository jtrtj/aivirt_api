# frozen_string_literal: true

require 'rails_helper'

describe RandomGameGenerator do
  context 'instance methods' do
    before :each do
      create_list(:question, 30)
    end
    it '#jsonable_hash - returns a hash containing question attributes' do
      generator = RandomGameGenerator.new
      game_data = generator.jsonable_hash

      expect(game_data).to be_a(Hash)
      expect(game_data[:questions].count).to eq(10)
    end
    it '#get_ten_questions - returns 10 existing questions from db' do
      generator = RandomGameGenerator.new

      expect(generator.get_ten_questions).to all(be_a(Question))
    end
  end
end
