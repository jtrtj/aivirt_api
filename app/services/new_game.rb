class NewGame
  def self.create
    new_game = Game.create
    new_questions = questions.map do |question|
      Question.where(question: question.text,
                     correct_answer: question.correct_answer,
                     incorrect_answers: question.incorrect_answers)
                     .first_or_create
    end
    new_questions.each do |question|
      GameQuestions.create(game: new_game, question: question)
    end
  end
end