# Contest ID: code-festival-2014-quala
# Problem ID: code_festival_qualA_d ( https://atcoder.jp/contests/code-festival-2014-quala/tasks/code_festival_qualA_d )
# Title: D. 壊れた電卓
# Language: Ruby (1.9.3)
# Submitted: 2014-09-20 16:17:02 +0000 UTC ( https://atcoder.jp/contests/code-festival-2014-quala/submissions/238868 ) 

a, k = gets.chomp.split(" ")
k = k.to_i
ans = 10**16
(0...a.length).each do |p|
  (0..9).each do |q|
    (0..9).each do |r|
      n = a[0...p] + q.to_s + (r.to_s * (a.length - p - 1))
      if n.length > 1 and n[0] == "0"
        n.slice!(0)
      end
      if n.split("").uniq.size <= k
        ans = [ans, (a.to_i - n.to_i).abs].min
      end
    end
  end
end
print ans, "\n"
