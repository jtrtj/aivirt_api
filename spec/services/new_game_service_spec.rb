require 'rails_helper'

describe NewGame do
  context 'class methods' do
    it '.create - Gets new game data from Open Trivia and adds it to Aivirt db' do
      expect { NewGame.create }.to change { Game.count }.by(1)
                             .and change { Question.count }.by(10)
                             .and change { GameQuestion.count }.by(10)
    end

    it '.new_questions - returns an array of NewQuestion objects' do
      new_questions = NewGame.questions

      expect(new_questions).to be_an(Array)
      expect(new_questions[0]).to be_a(NewQuestion)
    end

    it '.open_trivia_data - returns array of 10 trivia questions from OpenTrivia service' do
      open_trivia_data = NewGame.open_trivia_data

      expect(open_trivia_data).to be_an(Array)
      expect(open_trivia_data.count).to eq(10)
      expect(open_trivia_data[0]).to have_key('category')
      expect(open_trivia_data[0]).to have_key('type')
      expect(open_trivia_data[0]).to have_key('difficulty')
      expect(open_trivia_data[0]).to have_key('question')
      expect(open_trivia_data[0]).to have_key('correct_answer')
      expect(open_trivia_data[0]['incorrect_answers']).to be_an(Array)
    end
  end
end
