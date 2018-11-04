require 'rails_helper'

describe NewQuestion do
  context 'attributes' do
    it 'can return category, difficulty, text, correct_answer and incorrect_answers in strings converted from base64 data' do
      data =  {
                  category: "R2VvZ3JhcGh5",
                  type: "bXVsdGlwbGU=",
                  difficulty: "bWVkaXVt",
                  question: "V2hhdCBpcyB0aGUgbmFtZSBvZiB0aGUgY2FwaXRhbCBvZiBUdXJrZXk/",
                  correct_answer: "QW5rYXJh",
                  incorrect_answers: [
                      "SXN0YW5idWw=",
                      "SXptaXI=",
                      "QnVyc2E="
                  ]
              }

      new_question = NewQuestion.new(data)

      expect(new_question.category).to eq("Geography")
      expect(new_question.difficulty).to eq("medium")
      expect(new_question.text).to eq("What is the name of the capital of Turkey?")
      expect(new_question.correct_answer).to eq("Ankara")
      expect(new_question.incorrect_answers).to eq(["Istanbul", "Izmir", "Bursa"])
    end
  end
end