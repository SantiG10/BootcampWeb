class Player < ActiveRecord::Base
  belongs_to :team

  before_save :generate_team

  def generate_team
    while true
      id = rand(1..4)
      team = Team.find(id)
      if team.players.count < 5
        self.team_id = id
        break
      end
    end
  end

end
