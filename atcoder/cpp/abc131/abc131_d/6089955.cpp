// Contest ID: abc131
// Problem ID: abc131_d ( https://atcoder.jp/contests/abc131/tasks/abc131_d )
// Title: D. Megalomania
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-23 02:04:27 +0000 UTC ( https://atcoder.jp/contests/abc131/submissions/6089955 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

bool solve();
static int n;
static vector<pair<int, int>> tasks;

bool solve() {
  bool ret = true;
  int sum = 0;
  for (auto v : tasks) {
    sum += v.second;
    if (sum > v.first) {
      ret = false;
      break;
    }
  }
  return ret;
}

int main() {
  cin >> n;
  for (int i = 0; i < n; i++) {
    int a, b;
    cin >> a >> b;
    tasks.emplace_back(b, a);
  }
  sort(tasks.begin(), tasks.end());
  if (solve()) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
