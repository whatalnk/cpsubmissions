// Contest ID: abc031
// Problem ID: abc031_a ( https://atcoder.jp/contests/abc031/tasks/abc031_a )
// Title: A. ゲーム
// Language: C++14 (Clang++ 3.4)
// Submitted: 2016-11-20 07:18:54 +0000 UTC ( https://atcoder.jp/contests/abc031/submissions/986982 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int a, d;
  cin >> a >> d;
  if (a <= d) {
      cout << (a + 1) * d << endl;
    } else {
    cout << a * (d + 1) << endl;
  }
}
