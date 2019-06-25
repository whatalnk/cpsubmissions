// Contest ID: abc130
// Problem ID: abc130_d ( https://atcoder.jp/contests/abc130/tasks/abc130_d )
// Title: D. Enough Array
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-23 09:24:58 +0000 UTC ( https://atcoder.jp/contests/abc130/submissions/6094983 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve();
static int N;
static long long int K;
static vector<long long int> A;

void solve() {
  long long int ans = 0;
  long long int sum = 0;

  int r = 0;
  for (int l = 0; l < N; l++) {
    while (sum < K) {
      if (r == N) {
        break;
      } else {
        sum += A[size_t(r)];
        r++;
      }
    }
    if (sum < K) {
      break;
    }
    ans += N - r + 1;
    sum -= A[size_t(l)];
  }
  cout << ans << endl;
}

int main() {
  cin >> N >> K;
  long long int a;
  for (int i = 0; i < N; i++) {
    cin >> a;
    A.emplace_back(a);
  }
  solve();
  return 0;
}
