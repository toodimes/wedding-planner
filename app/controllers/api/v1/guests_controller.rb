class Api::V1::GuestsController < ApplicationController
  def index
    @guests = Guest.all.order(id: :asc)
    render :index
  end

  def show
    @guest = Guest.find_by(id: params[:id])
    render :show
  end
end
