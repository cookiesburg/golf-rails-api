
module Api::V1
  class ScoresController < ApplicationController


    def index
      @scores = Score.order("created_at DESC")
      render json: @scores
    end

    private


  end
end
