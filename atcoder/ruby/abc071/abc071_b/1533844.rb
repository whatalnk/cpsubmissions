# Contest ID: abc071
# Problem ID: abc071_b ( https://atcoder.jp/contests/abc071/tasks/abc071_b )
# Title: B. Not Found
# Language: Ruby (2.3.3)
# Submitted: 2017-08-22 13:26:55 +0000 UTC ( https://atcoder.jp/contests/abc071/submissions/1533844 ) 

s = gets.chomp.split("").sort.uniq
a = ('a'..'z').to_a
a.size.times do |i|
  if a[i] != s[i]
    puts a[i]
    exit
  end
end
puts "None"