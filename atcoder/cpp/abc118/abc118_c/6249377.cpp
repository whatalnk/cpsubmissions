// Contest ID: abc118
// Problem ID: abc118_c ( https://atcoder.jp/contests/abc118/tasks/abc118_c )
// Title: C. Monsters Battle Royale
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-06 03:02:41 +0000 UTC ( https://atcoder.jp/contests/abc118/submissions/6249377 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

long long gcd(long long a, long long b) {
  if (b == 0) {
    return a;
  }
  return gcd(b, a % b);
}
long long lcm(long long a, long long b) {
  long long g = gcd(a, b);
  return a / g * b;
}

void solve(int N, vector<long long> A) {
  long long ans = A[0];
  for (int i = 0; i < N; i++) {
    ans = gcd(ans, A[i]);
  }
  printf("%lld\n", ans);
}

int main() {
  int N;
  cin >> N;
  vector<long long> A(N);
  for (int i = 0; i < N; i++) {
    cin >> A[i];
  }
  solve(N, A);
  return 0;
}