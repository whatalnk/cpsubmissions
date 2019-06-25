// Contest ID: abc037
// Problem ID: abc037_a ( https://atcoder.jp/contests/abc037/tasks/abc037_a )
// Title: A. 饅頭
// Language: C++14 (Clang 3.8.0)
// Submitted: 2016-11-17 15:32:28 +0000 UTC ( https://atcoder.jp/contests/abc037/submissions/985613 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int a, b, c;
  cin >> a >> b >> c;  
  cout << c / min({a, b}) << endl;
  return 0;
}
