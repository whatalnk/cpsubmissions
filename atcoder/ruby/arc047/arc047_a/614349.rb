# Contest ID: arc047
# Problem ID: arc047_a ( https://atcoder.jp/contests/arc047/tasks/arc047_a )
# Title: A. タブの開きすぎ
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-20 07:29:51 +0000 UTC ( https://atcoder.jp/contests/arc047/submissions/614349 ) 

n, l = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
tab_open = 1
n_crash = 0
s.each do |i|
  if i == "+" then
    tab_open += 1
  else
    tab_open -= 1 if tab_open > 1
  end
  if tab_open > l then
    n_crash += 1
    tab_open = 1
  end
end
puts n_crash
