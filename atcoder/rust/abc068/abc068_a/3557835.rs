// Contest ID: abc068
// Problem ID: abc068_a ( https://atcoder.jp/contests/abc068/tasks/abc068_a )
// Title: A. ABCxxx
// Language: Rust (1.15.1)
// Submitted: 2018-11-07 07:28:41 +0000 UTC ( https://atcoder.jp/contests/abc068/submissions/3557835 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    println!("ABC{}", line);
}
