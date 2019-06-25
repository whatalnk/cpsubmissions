# Contest ID: abc045
# Problem ID: abc045_b ( https://atcoder.jp/contests/abc045/tasks/abc045_b )
# Title: B. 3人でカードゲームイージー / Card Game for Three (ABC Edit)
# Language: Ruby (2.3.3)
# Submitted: 2016-09-11 12:16:32 +0000 UTC ( https://atcoder.jp/contests/abc045/submissions/876049 ) 

a = gets.chomp.split("")
b = gets.chomp.split("")
c = gets.chomp.split("")

nex = a.shift
while true
  if nex == "a" then
    nxar = a
    if nxar.empty? then
      puts "A"
      exit
    end
  elsif nex == "b" then
    nxar = b
    if nxar.empty? then
      puts "B"
      exit
    end
  elsif nex == "c" then
    nxar = c
    if nxar.empty? then
      puts "C"
      exit
    end
  end
  nex = nxar.shift
end
