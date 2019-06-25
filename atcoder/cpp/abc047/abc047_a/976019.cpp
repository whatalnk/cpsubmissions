// Contest ID: abc047
// Problem ID: abc047_a ( https://atcoder.jp/contests/abc047/tasks/abc047_a )
// Title: A. キャンディーと2人の子供 / Fighting over Candies
// Language: C++14 (GCC 5.4.1)
// Submitted: 2016-11-09 03:24:33 +0000 UTC ( https://atcoder.jp/contests/abc047/submissions/976019 ) 

#include <iostream>

using namespace std;
int main() {
  int a, b, c;
  cin >> a >> b >> c;
  if (a + b == c || b + c == a || c + a == b){
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;    
  }
  return 0;
}
