require 'rails_helper'

describe NewGame do
  context 'class methods' do
    it '.create - Gets new game data from Open Trivia and adds it to Aivirt db' do
      VCR.use_cassette('create_new_game_from_opentrivia_and_unsplash', :record => :new_episodes) do
        expect { NewGame.create }.to change { Game.count }.by(1)
                              .and change { Question.count }.by(10)
                              .and change { GameQuestion.count }.by(10)
      end
    end

    it '.new_questions - returns an array of NewQuestion objects' do
      VCR.use_cassette('create_new_game_from_opentrivia_and_unsplash', :record => :new_episodes) do
        new_questions = NewGame.questions

        expect(new_questions).to be_an(Array)
        expect(new_questions[0]).to be_a(NewQuestion)
      end
    end

    it '.open_trivia_data - returns array of 10 trivia questions from OpenTrivia service' do
      VCR.use_cassette('open_trivia_10_questions_response') do
        open_trivia_data = NewGame.open_trivia_data

        expect(open_trivia_data).to be_an(Array)
        expect(open_trivia_data.count).to eq(10)
        expect(open_trivia_data[0]).to have_key(:category)
        expect(open_trivia_data[0]).to have_key(:type)
        expect(open_trivia_data[0]).to have_key(:difficulty)
        expect(open_trivia_data[0]).to have_key(:question)
        expect(open_trivia_data[0]).to have_key(:correct_answer)
        expect(open_trivia_data[0][:incorrect_answers]).to be_an(Array)
      end
    end
  end
end
