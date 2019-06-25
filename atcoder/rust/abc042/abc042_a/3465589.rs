// Contest ID: abc042
// Problem ID: abc042_a ( https://atcoder.jp/contests/abc042/tasks/abc042_a )
// Title: A. 和風いろはちゃんイージー / Iroha and Haiku (ABC Edition)
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 05:05:22 +0000 UTC ( https://atcoder.jp/contests/abc042/submissions/3465589 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut a: Vec<i32> = line
        .split_whitespace()
        .map(|n| n.parse::<i32>().unwrap())
        .collect();
    a.sort();
    if a[0] == 5 && a[1] == 5 && a[2] == 7 {
        println!("YES");
    } else {
        println!("NO");
    }
}
