FactoryBot.define do
  factory :question do
    text { Faker::DrWho.quote }
    correct_answer { Faker::DrWho.villian }
    incorrect_answers { Array.new(3).map{|v| v = Faker::DrWho.villian} }
    category { Faker::DrWho.catch_phrase }
    image_url { Faker::Placeholdit.image("50x50", 'jpeg', :random) }
    image_author { Faker::DrWho.character }
    image_author_profile { Faker::Placeholdit.image("50x50", 'jpeg', :random) }
  end

  factory :game do
    questions { create_list :question, 10 }
  end
end
