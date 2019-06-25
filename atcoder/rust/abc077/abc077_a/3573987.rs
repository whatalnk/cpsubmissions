// Contest ID: abc077
// Problem ID: abc077_a ( https://atcoder.jp/contests/abc077/tasks/abc077_a )
// Title: A. Rotation
// Language: Rust (1.15.1)
// Submitted: 2018-11-10 06:45:13 +0000 UTC ( https://atcoder.jp/contests/abc077/submissions/3573987 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let r1 = line.trim();
    let r1_rev: String = r1.chars().rev().collect();
    let line = gets();
    let r2 = line.trim();
    let r2_rev: String = r2.chars().rev().collect();
    if r1 == r2_rev && r2 == r1_rev {
        println!("YES");
    } else {
        println!("NO");
    }
}
