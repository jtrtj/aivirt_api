require 'rails_helper'

describe RandomGameGenerator do
  context 'instance methods' do
    it '#get_ten_questions - returns 10 existing questions from db' do
      generator = RandomGameGenerator.new
      
      expect(generator.get_ten_questions).to all(be_a(Question))
    end
  end
end