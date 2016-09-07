ActiveAdmin.register Selection do
  permit_params :game_id, :user_id, :pref_pick_int, :pref_pick_team, :spread_pick_team, :created_at, :updated_at


  index do
    
    column :week do |selection|
      selection.game.week_id if selection.game.present?
    end 

    column :game_id do |selection|
      game = selection.game if selection.game.present?
      full_game_name(game) if game != nil
    end 
    
    column :user_id do |selection|
      selection.user.name + " (#{selection.user.username})"
    end
    
    column :pref_pick_team do |selection|
      team = Team.find(selection.pref_pick_team)
      team.region 
    end
    
    column :pref_pick_int

    column :spread_pick_team do |selection|
      team = Team.find(selection.spread_pick_team)
      team.region 
    end
    actions
  end

form do |f|
  f.inputs do
     f.input :pref_pick_team, :label => 'Preference Pick Team', :as => :select, :collection => Team.all.map{|t| ["#{t.region + " " + t.name}", t.id]}, selected: selection.pref_pick_team
    f.input :pref_pick_int
     f.input :spread_pick_team, :label => 'Spread Pick Team', :as => :select, :collection => Team.all.map{|t| ["#{t.region + " " + t.name}", t.id]}, selected: selection.spread_pick_team    
    f.submit
  end
end

  remove_filter :correct
  remove_filter :admin

end

