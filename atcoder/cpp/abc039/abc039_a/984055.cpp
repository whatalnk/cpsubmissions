// Contest ID: abc039
// Problem ID: abc039_a ( https://atcoder.jp/contests/abc039/tasks/abc039_a )
// Title: A. 高橋直体
// Language: C++14 (Clang 3.8.0)
// Submitted: 2016-11-16 03:27:18 +0000 UTC ( https://atcoder.jp/contests/abc039/submissions/984055 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int a, b, c;
  cin >> a >> b >> c;  
  cout << (a * b + b * c + c * a) * 2 << endl;
  return 0;
}
