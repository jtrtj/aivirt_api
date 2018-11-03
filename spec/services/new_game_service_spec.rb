require 'rails_helper'

describe NewGame do
  context 'class methods' do
    it '.create - Gets new game data from Open Trivia and adds it to Aivirt db' do
      expect {NewGameService.create }.to change { Game.count }.by(1)
                                     .and change { Question.count }.by(10)
                                     .and change { GameQuestions.count }.by(10)
    end
  end
end