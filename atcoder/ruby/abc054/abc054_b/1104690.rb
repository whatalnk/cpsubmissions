# Contest ID: abc054
# Problem ID: abc054_b ( https://atcoder.jp/contests/abc054/tasks/abc054_b )
# Title: B. Template Matching
# Language: Ruby (2.3.3)
# Submitted: 2017-02-11 12:31:50 +0000 UTC ( https://atcoder.jp/contests/abc054/submissions/1104690 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
a = []
n.times do
  a << gets.chomp.split("")
end

b = []
m.times do
  b << gets.chomp
end
b = b.join("")
(n - m + 1).times do |py|
  (n - m + 1).times do |px|
    a_sub = []
    (py...(py+m)).each do |y| 
       a_sub +=  a[y][px...(px+m)]
    end
    a_sub = a_sub.join("")
    if b == a_sub then
      puts "Yes"
      exit
    end
  end
end

puts "No"