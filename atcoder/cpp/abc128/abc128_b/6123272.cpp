// Contest ID: abc128
// Problem ID: abc128_b ( https://atcoder.jp/contests/abc128/tasks/abc128_b )
// Title: B. Guidebook
// Language: C++14 (GCC 5.4.1)
// Submitted: 2019-06-26 01:41:32 +0000 UTC ( https://atcoder.jp/contests/abc128/submissions/6123272 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int N, vector<pair<pair<string, int>, int>> vec);

void solve(int N, vector<pair<pair<string, int>, int>> vec) {
  sort(vec.begin(), vec.end());
  for (auto v : vec) {
    cout << v.second + 1 << endl;
  }
}

int main() {
  int N;
  cin >> N;
  vector<pair<pair<string, int>, int>> vec;
  string S;
  int P;
  for (int i = 0; i < N; i++) {
    cin >> S;
    cin >> P;
    vec.emplace_back(make_pair(make_pair(S, -P), i));
  }

  solve(N, vec);
  return 0;
}
