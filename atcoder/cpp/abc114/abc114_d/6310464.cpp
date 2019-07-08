// Contest ID: abc114
// Problem ID: abc114_d ( https://atcoder.jp/contests/abc114/tasks/abc114_d )
// Title: D. 756
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-08 08:43:15 +0000 UTC ( https://atcoder.jp/contests/abc114/submissions/6310464 ) 

#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

vector<int> e;

int cnt(int m) {
  int ans = 0;
  for (auto x : e) {
    if (x >= m - 1) {
      ans += 1;
    }
  }
  return ans;
}

void solve(int N) {
  e.resize(N + 1, 0);
  for (int i = 2; i <= N; i++) {
    int cur = i;
    for (int j = 2; j <= i; j++) {
      while (cur % j == 0) {
        e[j] += 1;
        cur /= j;
      }
    }
  }
  int ans = cnt(75) + cnt(25) * (cnt(3) - 1) + cnt(15) * (cnt(5) - 1) +
            cnt(5) * (cnt(5) - 1) * (cnt(3) - 2) / 2;
  printf("%d\n", ans);
}

int main() {
  int N;
  cin >> N;
  solve(N);
  return 0;
}
