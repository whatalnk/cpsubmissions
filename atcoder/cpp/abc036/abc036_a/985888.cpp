// Contest ID: abc036
// Problem ID: abc036_a ( https://atcoder.jp/contests/abc036/tasks/abc036_a )
// Title: A. お茶
// Language: C++14 (Clang 3.8.0)
// Submitted: 2016-11-18 08:42:47 +0000 UTC ( https://atcoder.jp/contests/abc036/submissions/985888 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int a, b;
  cin >> a >> b;  
  cout << b / a + min({b % a, 1}) << endl;
  return 0;
}
