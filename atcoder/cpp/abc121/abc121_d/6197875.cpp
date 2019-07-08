// Contest ID: abc121
// Problem ID: abc121_d ( https://atcoder.jp/contests/abc121/tasks/abc121_d )
// Title: D. XOR World
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-30 12:41:23 +0000 UTC ( https://atcoder.jp/contests/abc121/submissions/6197875 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

long long f(long long A, long long B) {
  long long ans;
  if (A % 2 == 0) {
    if (B % 2 == 0) {
      ans = ((B - A) / 2) % 2;
    } else {
      ans = ((B - A + 1) / 2) % 2;
    }
  } else {
    if (B % 2 == 0) {
      ans = ((B - A - 1) / 2) % 2;
    } else {
      ans = ((B - A) / 2) % 2;
    }
  }
  return ans;
}

void solve(long long A, long long B) {
  long long ans;
  if (A == B) {
    ans = A;
  } else if (A % 2 == 0 && B % 2 == 0) {
    ans = f(A, B) ^ B;
  } else if (A % 2 == 0 && B % 2 == 1) {
    ans = f(A, B);
  } else if (A % 2 == 1 && B % 2 == 0) {
    ans = (A ^ f(A, B)) ^ B;
  } else {
    ans = A ^ f(A, B);
  }
  printf("%lld\n", ans);
}

int main() {
  long long A, B;
  cin >> A >> B;
  solve(A, B);
  return 0;
}