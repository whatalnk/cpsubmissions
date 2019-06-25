# Contest ID: yuha-c88
# Problem ID: yuha_c88_a ( https://atcoder.jp/contests/yuha-c88/tasks/yuha_c88_a )
# Title: A. エンド・オブ・ビギニング
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-02 05:35:59 +0000 UTC ( https://atcoder.jp/contests/yuha-c88/submissions/461760 ) 

n = gets.chomp.to_i
res = ""
while line = gets
  p, q, r = line.chomp.split(" ")
  case p
  when "BEGINNING" then
    i = 0
  when "MIDDLE" then
    i = (r.length - 1)/2
  when "END" then
    i = r.length - 1
  end
  res += r[i]
end
puts res
