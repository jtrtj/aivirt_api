require 'rails_helper'

describe Game do
  context 'relationships' do
    it { should have_many(:questions).through(:game_questions) }
  end
end