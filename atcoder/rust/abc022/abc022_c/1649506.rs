// Contest ID: abc022
// Problem ID: abc022_c ( https://atcoder.jp/contests/abc022/tasks/abc022_c )
// Title: C. Blue Bird
// Language: Rust (1.15.1)
// Submitted: 2017-10-03 08:29:18 +0000 UTC ( https://atcoder.jp/contests/abc022/submissions/1649506 ) 

use std::io;
use std::cmp;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
  let inf = 4294967296;

  let line = gets();
  let mut it = line.trim().split_whitespace().map(|n| n.parse::<usize>().unwrap());
  let (n, m) = (it.next().unwrap(), it.next().unwrap());

  let mut g = vec![vec![0; n+1]; n+1];
  for i in 0..(n+1) {
    for j in 0..(n+1) {
      if i == j {
        g[i][j] = 0;
      } else {
        g[i][j] = inf;
      }
    }
  }
  let mut se = Vec::new();
  for _ in 0..m {
    let line = gets();
    let mut it = line.trim().split_whitespace();
    let u = it.next().unwrap().parse::<usize>().unwrap();
    let v = it.next().unwrap().parse::<usize>().unwrap();
    let l = it.next().unwrap().parse::<i64>().unwrap();
    g[u][v] = l;
    g[v][u] = l;
    if u == 1 {
      se.push(v);
    }
    if v == 1 {
      se.push(u);
    }
  }

  for k in 2..(n+1) {
    for i in 2..(n+1) {
      for j in 2..(n+1) {
        g[i][j] = cmp::min(g[i][j], g[i][k] + g[k][j]);
      }
    }
  }

  let mut ans = inf;

  for i in &se {
    for j in &se {
      if i != j {
        ans = cmp::min(ans, g[1][*i] + g[1][*j] + g[*i][*j]);
      }
    }
  }
  if ans < inf {
    println!("{}", ans);
  } else {
    println!("-1");
  }
}
