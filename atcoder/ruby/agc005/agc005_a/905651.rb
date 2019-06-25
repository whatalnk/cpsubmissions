# Contest ID: agc005
# Problem ID: agc005_a ( https://atcoder.jp/contests/agc005/tasks/agc005_a )
# Title: A. STring
# Language: Ruby (2.3.3)
# Submitted: 2016-10-01 12:35:16 +0000 UTC ( https://atcoder.jp/contests/agc005/submissions/905651 ) 

x = gets.chomp
ss = 0
tt = 0
st = 0
x.each_char do |c|
  if c == "S" then
    ss += 1
  else
    tt += 1
    if ss != 0 then
      st += 1
      ss -= 1
    end
  end
end
puts tt * 2 - st * 2
