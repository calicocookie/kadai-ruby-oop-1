# クラス定義
class Team

  # オブジェクトの変数
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(input_name, input_win, input_lose, input_draw)# ここはわざわざinput_をつけて別名にする必要なかった
    self.name = input_name
    self.win = input_win
    self.lose = input_lose
    self.draw = input_draw
  end

  # オブジェクトのメソッド
  def calc_win_rate
    return self.win.to_f / (self.win + self.lose)
  end
  
  def show_team_result
    # ここもっとシンプルな書き方あったな、"#{self.name} です"みたいなの
    #puts self.name + "の2020年の成績は " + self.win.to_s + "勝" + self.lose.to_s + "敗" + self.draw.to_s + "分、勝率は" + self.calc_win_rate.to_s + "です。"
    puts "#{self.name}の2020年の成績は#{self.win.to_s}勝#{self.lose.to_s}敗#{self.draw.to_s}分、勝率は#{self.calc_win_rate.to_s}です。"
  end

end


# インスタンスの生成と、変数への代入
Giants = Team.new('Giants', 67, 45, 8)
Tigers = Team.new('Tigers', 60, 53, 7)
Dragons = Team.new('Dragons', 60, 55, 5)
BayStars = Team.new('BayStars', 56, 58, 6)
Carp = Team.new('Carp', 52, 56, 12)
Swallows = Team.new('Swallows', 41, 69, 10)


# インスタンスの使用
print Giants.show_team_result
print Tigers.show_team_result
print Dragons.show_team_result
print BayStars.show_team_result
print Carp.show_team_result
print Swallows.show_team_result
