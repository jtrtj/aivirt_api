class Api::V1::Games::TodaysGameController < ApplicationController
  def show
    render json: Game.most_recent.jsonable_hash,
           status: 200
  end
end