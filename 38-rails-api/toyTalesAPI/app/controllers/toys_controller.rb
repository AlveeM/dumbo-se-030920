class ToysController < ApplicationController

  def index
    @toys = Toy.all
    render json: @toys
  end

  def create
    @toy = Toy.create(toy_params)
    if @toy.valid?
      render json: @toy
    else
      render json: {messages: @toy.errors.full_messages}
    end
  end

  def update
    @toy = Toy.find(params[:id])
    @toy.update(toy_params)
    render json: @toy
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy
    render json: @toy
  end


  private

  def toy_params
    params.permit(:name, :image, :likes)
  end

end
