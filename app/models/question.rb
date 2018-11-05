class Question < ApplicationRecord
  validates_presence_of :text, :correct_answer, :incorrect_answers
  has_many :game_questions
  has_many :games, through: :game_questions

  def jsonable_hash
    {
      question: text,
      correct_answer: correct_answer,
      answers: all_answers,
      image_url: image_url,
      image_author: image_author,
      image_author_profile: image_author_profile
    }
  end

  def all_answers
    index = rand(0..(incorrect_answers.count-1))
    incorrect_answers.insert(index, correct_answer)
  end
end