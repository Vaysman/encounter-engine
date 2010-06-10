class Logs < Application
  before :ensure_authenticated
  before :find_game
  before :ensure_author, :only => [:show_live_channel]
  before :find_team, :only => [:show_level_log, :show_game_log]
  before :find_level, :only => [:show_level_log, :show_game_log]

  def index
    render
  end

  def show_live_channel
    @logs = Log.all :conditions => { :game_id => @game.id }
    render
  end

  def show_level_log
    @logs = Log.all :conditions => { :game_id => @game.id, :team => @team.name, :level => @level.name }
    render
  end

  def show_game_log
    @logs = Log.all :conditions => { :game_id => @game.id, :team => @team.name}
    render
  end

  def show_full_log
    @logs = Log.all :conditions => { :game_id => @game.id}
    render
  end

  def find_game
    @game = Game.find(params[:game_id])
  end  
  
  def find_team
    @team = Team.find(params[:team_id])
  end

  def find_level
    @level = @team.current_level_in(@game)
  end

end