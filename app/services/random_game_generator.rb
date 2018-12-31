class RandomGameGenerator
  def jsonable_hash
    { questions: question_data }
  end

  def question_data
    get_ten_questions.map do |question|
      question.jsonable_hash
    end
  end

  def get_ten_questions
    Question.order("RANDOM()").limit(10)
  end
end