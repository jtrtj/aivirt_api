class Api::V1::Games::RandomGameController < ApplicationController
  def show
    random_game = RandomGameGenerator.new
    render json: random_game.jsonable_hash,
           status: 200
  end
end