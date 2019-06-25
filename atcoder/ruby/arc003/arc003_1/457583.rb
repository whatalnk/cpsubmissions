# Contest ID: arc003
# Problem ID: arc003_1 ( https://atcoder.jp/contests/arc003/tasks/arc003_1 )
# Title: A. GPA計算
# Language: Ruby (1.9.3)
# Submitted: 2015-07-31 03:34:30 +0000 UTC ( https://atcoder.jp/contests/arc003/submissions/457583 ) 

n = gets.chomp.to_f
grades = gets.chomp.split("")

gpa = 0
grades.each do |g|
  case g
  when "A"
    gpa += 4
  when "B"
    gpa += 3
  when "C"
    gpa += 2
  when "D"
    gpa += 1
  end
end
puts gpa / n
