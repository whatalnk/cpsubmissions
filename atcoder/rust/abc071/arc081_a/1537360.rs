// Contest ID: abc071
// Problem ID: arc081_a ( https://atcoder.jp/contests/abc071/tasks/arc081_a )
// Title: 
// Language: Rust (1.15.1)
// Submitted: 2017-08-25 07:38:51 +0000 UTC ( https://atcoder.jp/contests/abc071/submissions/1537360 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
  let line = gets();
  let n = line.trim().parse::<usize>().unwrap();
  let line = gets();
  let mut a: Vec<i64> = line.split_whitespace().map(|x| x.parse::<i64>().unwrap()).collect();
  let mut l = &0;
  let mut s = &0;
  a.sort_by(|x, y| y.cmp(x));
  let mut it = a.iter();
  let mut curr = it.next().unwrap();
  let mut cnt = 1;
  loop {
    let x = it.next();
    match x {
      Some(i) if i == curr => cnt = cnt + 1, 
      Some(i) => {
        if cnt >= 4 {
          if l == &0 {
            l = curr;
          }
          if s == &0 {
            s = curr;
          }
        } else if cnt >= 2 {
          if l == &0 {
            l = curr;
          } else if s == &0 {
            s = curr;
          }
        }
        curr = i;
        cnt = 1;
      }, 
      None => {
        if cnt >= 4 {
          if l == &0 {
            l = curr;
          }
          if s == &0 {
            s = curr;
          }
        } else if cnt >= 2 {
          if l == &0 {
            l = curr;
          } else if s == &0 {
            s = curr;
          }
        }
        println!("{}", l * s);
        break;
      }, 
    }
  }
}
