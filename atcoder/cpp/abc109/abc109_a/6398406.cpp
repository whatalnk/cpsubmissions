// Contest ID: abc109
// Problem ID: abc109_a ( https://atcoder.jp/contests/abc109/tasks/abc109_a )
// Title: A. ABC333
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-15 13:21:59 +0000 UTC ( https://atcoder.jp/contests/abc109/submissions/6398406 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iomanip>
#include <iostream>
#include <map>
#include <queue>
#include <sstream>
#include <string>

using namespace std;

void solve(int A, int B) {
  if (A * B % 2 == 0) {
    printf("No\n");
  } else {
    printf("Yes\n");
  }
}

int main() {
  int A, B;
  cin >> A >> B;
  solve(A, B);
  return 0;
}