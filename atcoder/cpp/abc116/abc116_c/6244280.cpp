// Contest ID: abc116
// Problem ID: abc116_c ( https://atcoder.jp/contests/abc116/tasks/abc116_c )
// Title: C. Grand Garden
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-05 10:27:22 +0000 UTC ( https://atcoder.jp/contests/abc116/submissions/6244280 ) 

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

void solve(int N, vector<int> h)
{
  int ans = 0;
  int cnt = 0;
  for (;;)
  {
    for (int i = 0; i < N; i++)
    {
      if (h[i] > 0)
      {
        cnt += 1;
        h[i] -= 1;
      }
      else
      {
        if (cnt != 0)
        {
          ans += 1;
          cnt = 0;
        }
      }
    }
    if (cnt != 0)
    {
      ans += 1;
    }
    cnt = 0;
    if (*max_element(h.begin(), h.end()) <= 0)
    {
      break;
    }
  }
  printf("%d\n", ans);
}

int main()
{
  int N;
  cin >> N;
  vector<int> h(N);
  for (int i = 0; i < N; i++)
  {
    cin >> h[i];
  }
  solve(N, h);
  return 0;
}
