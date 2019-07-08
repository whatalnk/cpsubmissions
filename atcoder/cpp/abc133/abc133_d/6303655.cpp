// Contest ID: abc133
// Problem ID: abc133_d ( https://atcoder.jp/contests/abc133/tasks/abc133_d )
// Title: D. Rain Flows into Dams
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-07 17:11:41 +0000 UTC ( https://atcoder.jp/contests/abc133/submissions/6303655 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

void solve(int N, vector<long long> A) {
  vector<long long> X(N + 1);
  long long S = 0;
  long long a = 0;
  for (int i = 0; i < N; i++) {
    S += A[i];
    if ((i + 1) % 2 == 0) {
      a += A[i];
    }
  }
  X[0] = S - 2 * a;
  for (int i = 0; i < N; i++) {
    printf("%lld ", X[i]);
    X[i + 1] = 2 * A[i] - X[i];
  }
  printf("\n");
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