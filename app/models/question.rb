class Question < ApplicationRecord
  validates_presence_of :text, :correct_answer, :incorrect_answers
  has_many :game_questions
  has_many :games, through: :game_questions
end