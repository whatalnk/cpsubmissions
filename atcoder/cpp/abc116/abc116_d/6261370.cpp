// Contest ID: abc116
// Problem ID: abc116_d ( https://atcoder.jp/contests/abc116/tasks/abc116_d )
// Title: D. Various Sushi
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-07 06:26:10 +0000 UTC ( https://atcoder.jp/contests/abc116/submissions/6261370 ) 

#include <algorithm>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;

void solve(int N, int K, vector<pair<int, long long>> A) {
  long long ans = 0;
  map<int, vector<long long>> m;
  for (auto a : A) {
    m[a.first].emplace_back(a.second);
  }

  vector<long long> y0, y1;

  for (auto x : m) {
    vector<long long> v = x.second;
    sort(v.begin(), v.end());
    y1.push_back(v.back());
    v.pop_back();
    y0.insert(y0.end(), v.begin(), v.end());
  }
  sort(y0.rbegin(), y0.rend());
  sort(y1.rbegin(), y1.rend());
  int Y = max(0, K - (int)y0.size());
  long long X = 0;
  for (int i = 0; i < Y; i++) {
    X += y1[i];
  }
  for (int i = 0; i < K - Y; i++) {
    X += y0[i];
  }
  for (;;) {
    ans = max(ans, X + (long long)Y * Y);
    if (Y >= K || Y >= y1.size()) {
      break;
    }
    X += y1[Y];
    X -= y0[K - Y - 1];
    Y++;
  }
  printf("%lld\n", ans);
}

int main() {
  int N, K;
  cin >> N >> K;
  vector<pair<int, long long>> A(N);
  for (int i = 0; i < N; i++) {
    int t;
    long long d;
    cin >> t >> d;
    A[i] = make_pair(t, d);
  }
  solve(N, K, A);
  return 0;
}