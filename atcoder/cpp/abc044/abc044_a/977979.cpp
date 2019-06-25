// Contest ID: abc044
// Problem ID: abc044_a ( https://atcoder.jp/contests/abc044/tasks/abc044_a )
// Title: A. 高橋君とホテルイージー / Tak and Hotels (ABC Edit)
// Language: C++14 (GCC 5.4.1)
// Submitted: 2016-11-11 14:41:02 +0000 UTC ( https://atcoder.jp/contests/abc044/submissions/977979 ) 

#include <iostream>

using namespace std;
int main() {
  int n, k, x, y;
  cin >> n >> k >> x >> y;
  int ret;
  if (n <= k){
    ret = n * x;
  } else {
    ret = k * x + (n - k) * y;
  }
  cout << ret << endl;
  return 0;
}
