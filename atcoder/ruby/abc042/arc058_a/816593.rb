# Contest ID: abc042
# Problem ID: arc058_a ( https://atcoder.jp/contests/abc042/tasks/arc058_a )
# Title: C. こだわり者いろはちゃん / Iroha's Obsession
# Language: Ruby (2.3.3)
# Submitted: 2016-07-23 12:59:52 +0000 UTC ( https://atcoder.jp/contests/abc042/submissions/816593 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
d = gets.chomp.split(" ")
re = Regexp.union(d)
while true
  if n.to_s.match(re) then
    n += 1
  else
    puts n
    exit
  end
end
