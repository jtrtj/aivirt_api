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

  context 'instance methods' do
    it '#jsonable_hash' do
      question = create(:question)
      question_data = question.jsonable_hash

      expect(question_data).to have_key(:question)
      expect(question_data).to have_key(:correct_answer)
      expect(question_data[:answers]).to be_an(Array)
      expect(question_data).to have_key(:image_url)
      expect(question_data).to have_key(:image_url)
      expect(question_data).to have_key(:image_author)
      expect(question_data).to have_key(:image_author_profile)
    end
  end
end