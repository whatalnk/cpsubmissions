// Contest ID: abc070
// Problem ID: abc070_b ( https://atcoder.jp/contests/abc070/tasks/abc070_b )
// Title: B. Two Switches
// Language: Rust (1.15.1)
// Submitted: 2017-08-14 03:34:33 +0000 UTC ( https://atcoder.jp/contests/abc070/submissions/1512835 ) 

use std::io;
use std::cmp;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
    let line = gets();
    let mut it = line.split_whitespace().map(|n| n.parse::<i64>().unwrap());
    let (a, b, c, d) = (it.next().unwrap(), it.next().unwrap(), it.next().unwrap(), it.next().unwrap());
    let ret;
    if b <= c || d <= a {
       ret = 0;
    } else if (a < c && d < b) || (a > c && d > b) {
       ret = cmp::min(d - c, b - a);
    } else {
        ret = cmp::min(b - c, d - a);
    }
    println!("{}", ret);
}

