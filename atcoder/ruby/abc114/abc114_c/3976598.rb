# Contest ID: abc114
# Problem ID: abc114_c ( https://atcoder.jp/contests/abc114/tasks/abc114_c )
# Title: C. 755
# Language: Ruby (2.3.3)
# Submitted: 2019-01-11 08:36:03 +0000 UTC ( https://atcoder.jp/contests/abc114/submissions/3976598 ) 

n = gets.chomp.to_i

ret = 0
10.times do |a|
  ["7", "5", "3"].repeated_permutation(a) do |x|
    if x.include?("7") && x.include?("5") && x.include?("3")
      b = x.join("").to_i
      if b <= n
        ret += 1
      end
    end
  end
end

puts ret