# Contest ID: colopl2018-qual
# Problem ID: colopl2018_qual_b ( https://atcoder.jp/contests/colopl2018-qual/tasks/colopl2018_qual_b )
# Title: B. すぬけそだて――チュートリアル――
# Language: Ruby (2.3.3)
# Submitted: 2018-03-21 04:22:36 +0000 UTC ( https://atcoder.jp/contests/colopl2018-qual/submissions/2238294 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
tt = []
n.times do
  tt << gets.chomp.to_i
end
ans = 0
n.times do |i|
  if s[i] == '0' then
    ans += tt[i]
  else
    ans += [tt[i], x].min
  end
end
puts ans