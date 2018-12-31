require 'rails_helper'

describe RandomGameGenerator do
  context 'instance methods' do
    it '#jsonable_hash - returns a hash containing question attributes' do
      generator = RandomGameGenerator.new

      expect(generator.jsonable_hash).to be_a(Hash)
    end
    it '#get_ten_questions - returns 10 existing questions from db' do
      generator = RandomGameGenerator.new

      expect(generator.get_ten_questions).to all(be_a(Question))
    end
  end
end