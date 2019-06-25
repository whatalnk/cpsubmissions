// Contest ID: abc009
// Problem ID: abc009_1 ( https://atcoder.jp/contests/abc009/tasks/abc009_1 )
// Title: A. 引越し作業
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 05:17:26 +0000 UTC ( https://atcoder.jp/contests/abc009/submissions/2137406 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    if n % 2 == 0 {
        println!("{}", n / 2);
    } else {
        println!("{}", n / 2 + 1);
    }
}
