// Contest ID: abc113
// Problem ID: abc113_c ( https://atcoder.jp/contests/abc113/tasks/abc113_c )
// Title: C. ID
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-09 01:17:04 +0000 UTC ( https://atcoder.jp/contests/abc113/submissions/6317451 ) 

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

void solve(int N, int M, vector<pair<int, int>> X) {
  map<int, vector<pair<int, int>>> m;
  for (int i = 0; i < M; i++) {
    m[X[i].first].push_back(make_pair(X[i].second, i));
  }
  vector<string> ans(M);
  for (auto x : m) {
    int city = x.first;
    vector<pair<int, int>> v = x.second;
    sort(v.begin(), v.end());
    for (int i = 0; i < v.size(); i++) {
      stringstream ss;
      ss << setw(6) << setfill('0') << city;
      ss << setw(6) << setfill('0') << i + 1;
      ans[v[i].second] = ss.str();
    }
  }
  for (auto x : ans) {
    printf("%s\n", x.c_str());
  }
}

int main() {
  int N, M;
  cin >> N >> M;
  vector<pair<int, int>> X(M);
  for (int i = 0; i < M; i++) {
    int p, y;
    cin >> p >> y;
    X[i] = make_pair(p, y);
  }
  solve(N, M, X);
  return 0;
}