class Game < ApplicationRecord
  has_many :game_questions
  has_many :questions, through: :game_questions

  def self.most_recent
    Game.order(:created_at)
        .last
  end

  def jsonable_hash
    {
      id: id,
      date: created_at.strftime("%b %d, %Y"),
      questions: jsonable_questions
    }
  end

  def jsonable_questions
    questions.map do |question|
      question.jsonable_hash
    end
  end
end