# Contest ID: arc006
# Problem ID: arc006_1 ( https://atcoder.jp/contests/arc006/tasks/arc006_1 )
# Title: A. 宝くじ
# Language: Ruby (1.9.3)
# Submitted: 2015-08-01 08:28:52 +0000 UTC ( https://atcoder.jp/contests/arc006/submissions/458143 ) 

es = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.to_i
ls = gets.chomp.split(" ").map(&:to_i)
c = 0
ls.each do |l|
  if es.include?(l) then
    c += 1
  end
end

case c
  when 6
    puts 1
  when 5
    if ls.include?(b)
      puts 2
    else
      puts 3
    end
  when 4
    puts 4
  when 3
    puts 5
  else
    puts 0
end
