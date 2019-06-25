# Contest ID: mujin-pc-2018
# Problem ID: mujin_pc_2018_b ( https://atcoder.jp/contests/mujin-pc-2018/tasks/mujin_pc_2018_b )
# Title: B. セキュリティ
# Language: Ruby (2.3.3)
# Submitted: 2019-01-23 07:31:53 +0000 UTC ( https://atcoder.jp/contests/mujin-pc-2018/submissions/4072761 ) 

a = gets.chomp.to_i
s = gets.chomp.split("")

if a == 0
  puts "Yes"
  exit
end
s.each do |ss|
  if ss == "+"
    a += 1
  else
    a -= 1
  end
  if a == 0
    puts "Yes"
    exit
  end
end

puts "No"