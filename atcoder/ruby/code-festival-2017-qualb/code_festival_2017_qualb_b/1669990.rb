# Contest ID: code-festival-2017-qualb
# Problem ID: code_festival_2017_qualb_b ( https://atcoder.jp/contests/code-festival-2017-qualb/tasks/code_festival_2017_qualb_b )
# Title: B. Problem Set
# Language: Ruby (2.3.3)
# Submitted: 2017-10-08 14:18:35 +0000 UTC ( https://atcoder.jp/contests/code-festival-2017-qualb/submissions/1669990 ) 

n = gets.chomp.to_i
dd = gets.chomp.split(" ").map(&:to_i).sort
m = gets.chomp.to_i
tt = gets.chomp.split(" ").map(&:to_i).sort
i = 0
while true
  if tt.empty?
    puts "YES"
    exit
  end
  x = tt.shift
  while true
    if dd.empty?
      puts "NO"
      exit
    end
    y = dd.shift
    break if x == y
  end
end
