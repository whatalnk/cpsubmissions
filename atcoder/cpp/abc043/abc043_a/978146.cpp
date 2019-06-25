// Contest ID: abc043
// Problem ID: abc043_a ( https://atcoder.jp/contests/abc043/tasks/abc043_a )
// Title: A. キャンディーとN人の子供イージー / Children and Candies (ABC Edit)
// Language: C++14 (GCC 5.4.1)
// Submitted: 2016-11-12 02:41:38 +0000 UTC ( https://atcoder.jp/contests/abc043/submissions/978146 ) 

#include <iostream>
using namespace std;
int main() {
  int n;
  cin >> n;
  int ret;
  ret = (1 + n) * n / 2;
  cout << ret << endl;
  return 0;
}
