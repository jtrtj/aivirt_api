require 'rails_helper'

describe Question do
  context 'validations' do
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:correct_answer) }
    it { should validate_presence_of(:incorrect_answers) }
  end

  context 'relationships' do
    it { should have_many(:games).through(:game_questions) }
  end
end