class Match < ActiveRecord::Base
  has_and_belongs_to_many :teams


  before_save :points

  def points
    if self.result == 5
      teams = self.teams
      point = teams[0].points + 1
      team = Team.find(teams[0].id)
      team.update(points: point)
      point = teams[1].points + 1
      team = Team.find(teams[1].id)
      team.update(points: point)
    else
      team = Team.find(self.result)
      point = team.points + 3
      team.update(points: point)
    end
  end

end
