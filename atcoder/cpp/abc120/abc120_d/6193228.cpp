// Contest ID: abc120
// Problem ID: abc120_d ( https://atcoder.jp/contests/abc120/tasks/abc120_d )
// Title: D. Decayed Bridges
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-30 04:55:11 +0000 UTC ( https://atcoder.jp/contests/abc120/submissions/6193228 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

// UnioFind
class UnionFind {
  int n;
  vector<int> par;
  vector<int> rank;
  vector<long long> c;

public:
  UnionFind(int x) {
    n = x;
    par.resize(n + 1);
    rank.resize(n + 1);
    c.resize(n + 1);
  };

  void init() {
    for (int i = 0; i <= n; i++) {
      par[i] = i;
      rank[i] = 0;
      c[i] = 1;
    }
  }

  int find(int x) {
    if (par[x] == x) {
      return x;
    } else {
      par[x] = find(par[x]);
      return par[x];
    }
  }

  long long unite(int x, int y) {
    x = find(x);
    long long cx = c[x];
    y = find(y);
    long long cy = c[y];
    // if (x == y) {
    //   return;
    // }
    if (rank[x] < rank[y]) {
      par[x] = y;
      c[y] = cx + cy;
    } else {
      par[y] = x;
      c[x] = cx + cy;
      if (rank[x] == rank[y]) {
        rank[x]++;
      }
    }
    return cx * cy;
  }

  bool same(int x, int y) { return find(x) == find(y); }
};

void solve(int N, int M, vector<int> A, vector<int> B) {
  vector<long long> ans(M + 1);
  ans[M] = (long long)N * (N - 1) / 2;
  UnionFind uf(N);
  uf.init();

  for (int i = M - 1; i >= 0; i--) {
    int a = A[i];
    int b = B[i];
    if (uf.same(a, b)) {
      ans[i] = ans[i + 1];
    } else {
      long long u = uf.unite(a, b);
      ans[i] = ans[i + 1] - u;
    }
  }
  for (int i = 1; i <= M; i++) {
    printf("%lld\n", ans[i]);
  }
}

int main() {
  int N, M;
  cin >> N >> M;
  vector<int> A(M);
  vector<int> B(M);
  for (int i = 0; i < M; i++) {
    int a, b;
    cin >> a >> b;
    A[i] = a;
    B[i] = b;
  }
  solve(N, M, A, B);
  return 0;
}