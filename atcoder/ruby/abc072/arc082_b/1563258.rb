# Contest ID: abc072
# Problem ID: arc082_b ( https://atcoder.jp/contests/abc072/tasks/arc082_b )
# Title: D. Derangement
# Language: Ruby (2.3.3)
# Submitted: 2017-09-02 13:27:01 +0000 UTC ( https://atcoder.jp/contests/abc072/submissions/1563258 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ret = 0
curr = 1
i = 0
loop do
  break if i > n - 1
  if a[i] == curr
    ret += 1
    curr += 2
    i += 2
  else
    curr += 1
    i += 1
  end
end

puts ret