# Contest ID: arc046
# Problem ID: arc046_b ( https://atcoder.jp/contests/arc046/tasks/arc046_b )
# Title: B. 石取り大作戦
# Language: Ruby (2.3.3)
# Submitted: 2017-10-20 13:09:16 +0000 UTC ( https://atcoder.jp/contests/arc046/submissions/1695394 ) 

n = gets.chomp.to_i
a, b = gets.chomp.split(" ").map(&:to_i)
if n <= a
  puts "Takahashi"
else
  if a == b
    if n % (a + 1) == 0
      puts "Aoki"
    else
      puts "Takahashi"
    end
  else
    if a > b
      puts "Takahashi"
    else
      puts "Aoki"
    end
  end
end