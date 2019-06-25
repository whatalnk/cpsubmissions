# Contest ID: abc029
# Problem ID: abc029_c ( https://atcoder.jp/contests/abc029/tasks/abc029_c )
# Title: C. Brute-force Attack
# Language: Ruby (2.1.5p273)
# Submitted: 2015-09-19 12:15:58 +0000 UTC ( https://atcoder.jp/contests/abc029/submissions/497809 ) 

n = gets.chomp.to_i
c = ["a", "b", "c"]
c.repeated_permutation(n).each do |pswd|
  puts pswd.join("")
end
