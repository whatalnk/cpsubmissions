// Contest ID: abc125
// Problem ID: abc125_c ( https://atcoder.jp/contests/abc125/tasks/abc125_c )
// Title: C. GCD on Blackboard
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-28 01:20:00 +0000 UTC ( https://atcoder.jp/contests/abc125/submissions/6143438 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

long long gcd(long long a, long long b);
long long lcm(long long a, long long b);

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

void solve(int N, vector<long long> A);

void solve(int N, vector<long long> A) {
  vector<long long> L(N + 1);
  vector<long long> R(N + 1);
  L[0] = 0;
  R[N] = 0;
  for (int i = 0; i < N; i++) {
    L[i + 1] = gcd(L[i], A[i]);
  }
  for (int i = N - 1; i >= 0; i--) {
    R[i] = gcd(R[i + 1], A[i]);
  }
  long long ans = 0;
  for (int i = 0; i < N; i++) {
    ans = max(ans, gcd(L[i], R[i + 1]));
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
