class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :text
      t.string :correct_answer
      t.string :incorrect_answers, array: true, default: []
      t.string :category
      t.string :image_url
      t.string :image_author
      t.string :image_author_profile

      t.timestamps
    end
  end
end
