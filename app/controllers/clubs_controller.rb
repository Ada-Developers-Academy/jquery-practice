class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def create
    @club = Club.new(params.require(:club).permit(:name, :category, :handed))
    if @club.save
      redirect_to root_path
    end
  end
end
