// Contest ID: abc006
// Problem ID: abc006_1 ( https://atcoder.jp/contests/abc006/tasks/abc006_1 )
// Title: A. 世界のFizzBuzz
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 05:09:12 +0000 UTC ( https://atcoder.jp/contests/abc006/submissions/2137391 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    if n == 3 || n == 6 || n == 9 {
        println!("YES");
    } else {
        println!("NO");
    }
}
