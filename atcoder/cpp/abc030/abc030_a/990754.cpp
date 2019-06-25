// Contest ID: abc030
// Problem ID: abc030_a ( https://atcoder.jp/contests/abc030/tasks/abc030_a )
// Title: A. 勝率計算
// Language: C++14 (Clang++ 3.4)
// Submitted: 2016-11-25 04:06:52 +0000 UTC ( https://atcoder.jp/contests/abc030/submissions/990754 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int a, b, c, d;
  cin >> a >> b >> c >> d;
  if (b * c > d * a) {
      cout << "TAKAHASHI" << endl;
  } else if (b * c < d * a) {
      cout << "AOKI" << endl;
  } else {
    cout << "DRAW" << endl;
  }
}
