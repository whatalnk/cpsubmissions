# Contest ID: arc015
# Problem ID: arc015_2 ( https://atcoder.jp/contests/arc015/tasks/arc015_2 )
# Title: B. 真冬日？真夏日？
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 06:45:57 +0000 UTC ( https://atcoder.jp/contests/arc015/submissions/1098514 ) 

n = gets.chomp.to_i
ret = Array.new(6, 0)
n.times do
  tmax, tmin = gets.chomp.split(" ").map(&:to_f)
  if tmax >= 35.0 then
    ret[0] += 1
  elsif tmax >= 30.0 then
    ret[1] += 1
  elsif tmax >= 25.0 then
    ret[2] += 1
  elsif tmax < 0 then
    ret[5] += 1
  end

  if tmin >= 25.0 then
    ret[3] += 1
  elsif tmin < 0.0 && tmax >= 0.0 then
    ret[4] += 1
  end
end
puts ret.join(" ")