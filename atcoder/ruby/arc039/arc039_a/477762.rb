# Contest ID: arc039
# Problem ID: arc039_a ( https://atcoder.jp/contests/arc039/tasks/arc039_a )
# Title: A. A - B problem
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-26 10:37:57 +0000 UTC ( https://atcoder.jp/contests/arc039/submissions/477762 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
as = []
bs = []

(0..2).each do |i|
  tmp = a.to_s
  tmp[i] = "9"
  as << tmp.to_i
  tmp = b.to_s
  tmp[i] = "9"
  bs << tmp.to_i
  tmp = a.to_s
  if i == 0 then
    tmp[i] = "1"
  else
    tmp[i] = "0"
  end
  as << tmp.to_i
  tmp = b.to_s
  if i == 0 then
    tmp[i] = "1"
  else
    tmp[i] = "0"
  end
  bs << tmp.to_i
end
res = [a-b]
as.each do |n|
  res << n - b
end
bs.each do |n|
  res << a - n
end
puts res.max