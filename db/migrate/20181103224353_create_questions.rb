class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :text
      t.string :correct_answer
      t.string :incorrect_answers, array: true, default: []
    end
  end
end
