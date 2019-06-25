// Contest ID: abc040
// Problem ID: abc040_a ( https://atcoder.jp/contests/abc040/tasks/abc040_a )
// Title: A. 赤赤赤赤青
// Language: C++14 (Clang 3.8.0)
// Submitted: 2016-11-13 01:51:28 +0000 UTC ( https://atcoder.jp/contests/abc040/submissions/981637 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int n, x;
  cin >> n >> x;  
  cout << min({x - 1, n - x }) << endl;
  return 0;
}
