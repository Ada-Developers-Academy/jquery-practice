class PlayerClubsController < ApplicationController
  def create
    @club = Club.find(params[:club_id])
    # PlayerClub.create(club_id: @club.id, player_id: current_user.id)
    # That line ^ does the same as:
    current_user.clubs << @club
    redirect_to player_club_path
  end

  def index
    @players_clubs = current_user.clubs

  end
end
