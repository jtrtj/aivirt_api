require 'base64'

class NewQuestion
  def initialize(data)
    @data = data
  end

  def category
    decode(@data[:category])
  end

  def difficulty
    decode(@data[:difficulty])
  end

  def text
    decode(@data[:question])
  end

  def correct_answer
    decode(@data[:correct_answer])
  end

  def incorrect_answers
    @data[:incorrect_answers].map do |answer|
      decode(answer)
    end
  end

  private

  def decode(base64_string)
    Base64.decode64(base64_string)
  end
end
