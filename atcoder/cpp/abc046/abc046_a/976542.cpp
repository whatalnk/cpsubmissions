// Contest ID: abc046
// Problem ID: abc046_a ( https://atcoder.jp/contests/abc046/tasks/abc046_a )
// Title: A. AtCoDeerくんとペンキ / AtCoDeer and Paint Cans
// Language: C++14 (GCC 5.4.1)
// Submitted: 2016-11-09 15:37:36 +0000 UTC ( https://atcoder.jp/contests/abc046/submissions/976542 ) 

#include <iostream>

using namespace std;
int main() {
  int a, b, c;
  cin >> a >> b >> c;
  int ret;
  if (a == b && b == c) {
    ret = 1;
  } else if (a == b || b == c || c == a) {
    ret = 2;
  } else {
    ret = 3;
  }
  cout << ret << endl;
  return 0;
}
