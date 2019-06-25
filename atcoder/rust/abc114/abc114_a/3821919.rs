// Contest ID: abc114
// Problem ID: abc114_a ( https://atcoder.jp/contests/abc114/tasks/abc114_a )
// Title: A. 753
// Language: Rust (1.15.1)
// Submitted: 2018-12-19 04:48:58 +0000 UTC ( https://atcoder.jp/contests/abc114/submissions/3821919 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<usize>().unwrap();
    if n == 7 || n == 5 || n == 3 {
        println!("YES");
    } else {
        println!("NO");
    }
}
