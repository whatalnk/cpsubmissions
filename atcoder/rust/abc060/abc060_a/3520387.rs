// Contest ID: abc060
// Problem ID: abc060_a ( https://atcoder.jp/contests/abc060/tasks/abc060_a )
// Title: A. Shiritori
// Language: Rust (1.15.1)
// Submitted: 2018-11-02 11:00:20 +0000 UTC ( https://atcoder.jp/contests/abc060/submissions/3520387 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim().split_whitespace();
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    let c = it.next().unwrap();
    if a.chars().last() == b.chars().nth(0) && b.chars().last() == c.chars().nth(0) {
        println!("YES");
    } else {
        println!("NO");
    }
}
