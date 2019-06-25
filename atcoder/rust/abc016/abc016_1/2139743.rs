// Contest ID: abc016
// Problem ID: abc016_1 ( https://atcoder.jp/contests/abc016/tasks/abc016_1 )
// Title: A. 12月6日
// Language: Rust (1.15.1)
// Submitted: 2018-02-27 04:13:08 +0000 UTC ( https://atcoder.jp/contests/abc016/submissions/2139743 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim()
        .split_whitespace()
        .map(|x| x.parse::<u32>().unwrap());
    let (a, b) = (it.next().unwrap(), it.next().unwrap());
    if a % b == 0 {
        println!("YES");
    } else {
        println!("NO");
    }
}
