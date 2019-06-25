// Contest ID: abc079
// Problem ID: abc079_a ( https://atcoder.jp/contests/abc079/tasks/abc079_a )
// Title: A. Good Integer
// Language: Rust (1.15.1)
// Submitted: 2018-11-10 09:51:48 +0000 UTC ( https://atcoder.jp/contests/abc079/submissions/3576977 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim().chars();
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    let c = it.next().unwrap();
    let d = it.next().unwrap();
    if (a == b && b == c) || (b == c && c == d) {
        println!("Yes");
    } else {
        println!("No");
    }
}
