require './app/services/new_game.rb'

namespace :db do
  desc 'Add a new game from Open Trivia'

  task new_game: :environment do
    NewGame.create
  end
end
