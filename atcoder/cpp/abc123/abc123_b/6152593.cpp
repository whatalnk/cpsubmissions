// Contest ID: abc123
// Problem ID: abc123_b ( https://atcoder.jp/contests/abc123/tasks/abc123_b )
// Title: B. Five Dishes
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 01:31:36 +0000 UTC ( https://atcoder.jp/contests/abc123/submissions/6152593 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

int f(int x) {
  if (x % 10 == 0) {
    return x;
  } else {
    return (x / 10 + 1) * 10;
  }
}

void solve(int A, int B, int C, int D, int E) {
  int x = max({f(A) - A, f(B) - B, f(C) - C, f(D) - D, f(E) - E});
  printf("%d\n", f(A) + f(B) + f(C) + f(D) + f(E) - x);
}

int main() {
  int A, B, C, D, E;
  cin >> A >> B >> C >> D >> E;
  solve(A, B, C, D, E);
  return 0;
}
