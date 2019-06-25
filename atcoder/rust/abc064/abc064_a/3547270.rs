// Contest ID: abc064
// Problem ID: abc064_a ( https://atcoder.jp/contests/abc064/tasks/abc064_a )
// Title: A. RGB Cards
// Language: Rust (1.15.1)
// Submitted: 2018-11-05 08:43:50 +0000 UTC ( https://atcoder.jp/contests/abc064/submissions/3547270 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line
        .trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap());
    let r = it.next().unwrap();
    let g = it.next().unwrap();
    let b = it.next().unwrap();
    let rgb = r * 100 + g * 10 + b;
    if rgb % 4 == 0 {
        println!("YES");
    } else {
        println!("NO");
    }
}
