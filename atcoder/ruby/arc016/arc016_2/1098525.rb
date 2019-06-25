# Contest ID: arc016
# Problem ID: arc016_2 ( https://atcoder.jp/contests/arc016/tasks/arc016_2 )
# Title: B. 音楽ゲーム
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 07:01:04 +0000 UTC ( https://atcoder.jp/contests/arc016/submissions/1098525 ) 

n = gets.chomp.to_i
score = []
n.times do
  score << gets.chomp.split("")
end
score =  score.transpose

ret = 0
flag = false

score.each do |tones|
  tones.each do |tn|
    if tn == "x" then
      ret += 1
      flag = false if flag
    elsif tn == "o"
      if !flag then
        flag = true
        ret += 1
      end
    else
      flag = false if flag
    end
  end
  flag = false
end
puts ret