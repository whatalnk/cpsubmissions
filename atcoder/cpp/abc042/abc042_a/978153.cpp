// Contest ID: abc042
// Problem ID: abc042_a ( https://atcoder.jp/contests/abc042/tasks/abc042_a )
// Title: A. 和風いろはちゃんイージー / Iroha and Haiku (ABC Edition)
// Language: C++14 (GCC 5.4.1)
// Submitted: 2016-11-12 02:53:55 +0000 UTC ( https://atcoder.jp/contests/abc042/submissions/978153 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int a, b, c;
  cin >> a >> b >> c;
  string ret;
  int x = max({a, b, c});
  int y = min({a, b, c});
  if ((x == 7) && (y == 5) && ((a + b + c) - (x + y) == 5)) {
    ret = "YES";
  } else {
    ret = "NO";
  }
  cout << ret << endl;
  return 0;
}
