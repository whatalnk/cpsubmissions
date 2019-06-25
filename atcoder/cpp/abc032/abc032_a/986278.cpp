// Contest ID: abc032
// Problem ID: abc032_a ( https://atcoder.jp/contests/abc032/tasks/abc032_a )
// Title: A. 高橋君と青木君の好きな数
// Language: C++14 (Clang++ 3.4)
// Submitted: 2016-11-19 03:58:51 +0000 UTC ( https://atcoder.jp/contests/abc032/submissions/986278 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int a, b, n;
  cin >> a >> b >> n;
  int x = min({a, b});
  int y = max({a, b});
  int z = n / y;
  while (1) {
    if (y * z >= n && y * z % x == 0){
      cout << y * z << endl;
      return 0;
    }
    z++;
  }
}
