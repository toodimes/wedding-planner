class GuestsController < ApplicationController
  def index
    @guests = Guest.all.order(id: :asc)
  end

  def new

  end

  def edit
    @guest = Guest.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def create
    @guest = Guest.new(title: params[:title], first_name: params[:first_name], last_name: params[:last_name], address_line_1: params[:address_line_1], address_line_2: params[:address_line_2], address_city: params[:address_city], address_state: params[:address_state], address_zip: params[:address_zip], invited: params[:invited], attending: params[:attending], number_of_attendees: params[:number_of_attendees], notes: params[:notes], replied: false, thank_you_sent: false)
    if @guest.save
      flash[:success] = "Congrats! #{@guest.first_name} #{@guest.last_name} has been added"
      redirect_to "/guests"
    else
      flash[:danger] = "Something went wrong"
    end
  end

  def update

  end

  def delete

  end
end
