# Contest ID: abc072
# Problem ID: abc072_a ( https://atcoder.jp/contests/abc072/tasks/abc072_a )
# Title: A. Sandglass2
# Language: Python3 (3.4.3)
# Submitted: 2017-09-04 12:34:56 +0000 UTC ( https://atcoder.jp/contests/abc072/submissions/1568946 ) 

if __name__ == '__main__':
    x, t = list(map(int, input().split(" ")))
    print(max(0, x - t))
