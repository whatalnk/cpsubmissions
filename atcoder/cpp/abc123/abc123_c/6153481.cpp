// Contest ID: abc123
// Problem ID: abc123_c ( https://atcoder.jp/contests/abc123/tasks/abc123_c )
// Title: C. Five Transportations
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 03:30:56 +0000 UTC ( https://atcoder.jp/contests/abc123/submissions/6153481 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(long long N, long long A, long long B, long long C, long long D,
           long long E) {
  long long x = min({A, B, C, D, E});
  long long r = N % x;
  long long d = N / x;
  if (r > 0) {
    d += 1;
  }
  cout << 5 + d - 1 << endl;
}

int main() {
  long long N, A, B, C, D, E;
  cin >> N >> A >> B >> C >> D >> E;
  solve(N, A, B, C, D, E);
  return 0;
}
