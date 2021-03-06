class Team
    # インスタンスが持つ変数(値)
    attr_accessor :name, :win, :lose, :draw
    
    # インスタンスを初期化するためのメソッド
    def initialize(name,win,lose,draw)
        @name = name
        @win = win
        @lose = lose
        @draw = draw
    end

    #インスタンスが持つメソッド(処理)
    def calc_win_rate
         return @win.to_f / (@win + @lose)
    end
    def show_team_result
        puts "#{@name}の2020年の成績は#{@win}勝#{@lose}敗#{@draw}分、勝率は#{calc_win_rate
        }です。"
    end
end

team_giants = Team.new('Giants',67,45,8)
team_tigers = Team.new('Tigers',60,53,7)
team_dragons = Team.new('Dragons',60,55,5)
team_baystars = Team.new('baystars',56,58,6)
team_carp = Team.new('Carp',52,56,12)
team_swallows = Team.new('Swallows',41,69,10)

team_giants.show_team_result
team_tigers.show_team_result
team_dragons.show_team_result
team_baystars.show_team_result
team_carp.show_team_result
team_swallows.show_team_result
