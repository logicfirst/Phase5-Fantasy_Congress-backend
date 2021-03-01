class TeamsController < ApplicationController

  def index
    render json: Team.all
  end

  def create
    team = Team.create(team_params)
    render json: team
  end

  def update
    team = Team.find(params[:id])
    team.update_attributes(team_params)
    render json: team
  end

  def destroy
    Team.destroy(params[:id])
  end

  private 

def team_params
  params.require(:team).permit(:user_id, :team_name)
end

end
