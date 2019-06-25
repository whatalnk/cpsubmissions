// Contest ID: abc061
// Problem ID: abc061_a ( https://atcoder.jp/contests/abc061/tasks/abc061_a )
// Title: A. Between Two Integers
// Language: Rust (1.15.1)
// Submitted: 2018-11-05 08:28:43 +0000 UTC ( https://atcoder.jp/contests/abc061/submissions/3547161 ) 

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
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    let c = it.next().unwrap();
    if c >= a && c <= b {
        println!("Yes");
    } else {
        println!("No");
    }
}
