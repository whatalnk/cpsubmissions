# Contest ID: abc057
# Problem ID: abc057_d ( https://atcoder.jp/contests/abc057/tasks/abc057_d )
# Title: D. Maximum Average Sets
# Language: Ruby (2.3.3)
# Submitted: 2017-06-27 02:16:41 +0000 UTC ( https://atcoder.jp/contests/abc057/submissions/1384133 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)
v = gets.chomp.split(" ").map(&:to_i).sort.reverse

def comb_table(n)
  ct = Array.new(51){Array.new(51, 0)}
  (0..n).each do |i|
    (0..i).each do |j|
      if j == 0 || j == i then
        ct[i][j] = 1
      else
        ct[i][j] = ct[i-1][j-1] + ct[i-1][j]
      end
    end
  end
  return ct
end
ct = comb_table(n)

ave = v[0..(a-1)].inject(:+) / a.to_f
puts sprintf("%f", ave)

a_th_val_num = 0
a_th_val_pos = 0

n.times do |i|
  if v[i] == v[a-1] then
    a_th_val_num += 1
    if i < a then
      a_th_val_pos += 1
    end
  end
end

cnt = 0
if v[0] == v[a-1] then
  (a..b).each do |i|
    cnt += ct[a_th_val_num][i]
  end
else
  cnt += ct[a_th_val_num][a_th_val_pos]
end

puts cnt
