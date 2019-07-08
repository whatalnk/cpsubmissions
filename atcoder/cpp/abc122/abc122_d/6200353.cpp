// Contest ID: abc122
// Problem ID: abc122_d ( https://atcoder.jp/contests/abc122/tasks/abc122_d )
// Title: D. We Like AGC
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-30 16:58:07 +0000 UTC ( https://atcoder.jp/contests/abc122/submissions/6200353 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

const long long MOD = 1e9 + 7;

static int N;
vector<map<string, long long>> memo;

bool ok(string last4) {
  for (int i = 0; i < 4; i++) {
    string t = last4;
    if (i >= 1) {
      t[i - 1] = last4[i];
      t[i] = last4[i - 1];
    }
    if (t.find("AGC") != string::npos) {
      return false;
    }
  }
  return true;
}

long long dfs(int cur, string last3) {
  if (memo[cur].find(last3) != memo[cur].end()) {
    return memo[cur][last3];
  }
  if (cur == N) {
    return 1;
  }
  long long ret = 0;
  for (string c : {"A", "C", "G", "T"}) {
    if (ok(last3 + c)) {
      ret = (ret + dfs(cur + 1, last3.substr(1, 2) + c)) % MOD;
    }
  }
  memo[cur][last3] = ret;
  return ret;
}

void solve(int N) {
  long long ans = dfs(0, "TTT");
  printf("%lld\n", ans);
}

int main() {
  cin >> N;
  memo.resize(N + 1);
  solve(N);
  return 0;
}