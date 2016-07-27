module GamesHelper
  def pref_pick(selection)
    Team.find(selection.pref_pick_team).region + " " + Team.find(selection.pref_pick_team).name 
  end

  def spread_pick(selection)
    Team.find(selection.spread_pick_team).region + " " + Team.find(selection.spread_pick_team).name
  end

  def pref_pick_integers
    [1,2,3,4,5,6,7,8,9,10,11,12,13]
  end
end