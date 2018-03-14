
module Api::V1
  class ScoresController < ApplicationController


    def index
      @scores = Score.order("created_at DESC")
      render json: @scores
    end

    def create
      @score = Score.create(score_params)
      render json: @score
    end

    def update
      @score = Score.find(params[:id])
      @score.update_attributes(score_params)
      render json: @score
    end

    private



    def score_params
      params.require(:score).permit(:strokes, :user_id, :course_id, :differential)
    end

  end
end
