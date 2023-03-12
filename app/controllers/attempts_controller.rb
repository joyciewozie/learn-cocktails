class AttemptsController < ApplicationController
  before_action :set_cocktail, only: %i[new create]

  def new
    @attempt = Attempt.new
  end

  def create
    # create instance of Attempt
    @attempt = Attempt.new(attempt_params)
    # retrieive the correct instance of cocktail
    @attempt.cocktail = @cocktail
    if @attempt.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @attempt = Attempt.find(params[:id])
  end

  def update
    # retrieve the attempt instance
    @attempt = Attempt.find(params[:id])
    @cocktail = @attempt.cocktail
    # update the attempt instance in db
    if @attempt.update(attempt_params)
      redirect_to cocktail_path(@cocktail)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def attempt_params
    params.require(:attempt).permit(:title, :comment, :date_of_attempt, :photo)
  end
end
