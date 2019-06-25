# Contest ID: code-festival-2014-quala
# Problem ID: code_festival_qualA_d ( https://atcoder.jp/contests/code-festival-2014-quala/tasks/code_festival_qualA_d )
# Title: D. 壊れた電卓
# Language: Ruby (1.9.3)
# Submitted: 2014-09-20 14:59:50 +0000 UTC ( https://atcoder.jp/contests/code-festival-2014-quala/submissions/238676 ) 

a, k = gets.chomp.split(" ")

res = 10000000000000001
(0..9).to_a.combination(k.to_i) do |tpl|
  hoge = TRUE
  s0 = ''
  s1 = ''
  (0...a.length).each do |i|
    e = a[i].to_i
    if hoge
      if tpl.include?(e)
        s0 = s0 + e.to_s
        s1 = s1 + e.to_s
      else
        b = []
        tpl.each do |el|
          b << (e - el).abs
        end
        tpll = []
        tpl.each do |el|
          if (e - el).abs == b.min
            tpll << el
          end
        end
        s0 = s0 + tpll.max.to_s
        if i == 0 and tpll.length < 2
          s1 = s1 + "0"
        else
          s1 = s1 + tpll.min.to_s
        end
        hoge = FALSE
      end
    else
      s0 = s0 + tpl.min.to_s
      s1 = s1 + tpl.max.to_s
    end
  end
  res = [res, (a.to_i - s0.to_i).abs, (a.to_i - s1.to_i).abs].min
end
print res, "\n"
