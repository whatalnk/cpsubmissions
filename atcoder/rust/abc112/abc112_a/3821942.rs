// Contest ID: abc112
// Problem ID: abc112_a ( https://atcoder.jp/contests/abc112/tasks/abc112_a )
// Title: A. Programming Education
// Language: Rust (1.15.1)
// Submitted: 2018-12-19 04:53:18 +0000 UTC ( https://atcoder.jp/contests/abc112/submissions/3821942 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<usize>().unwrap();
    if n == 1 {
        println!("Hello World");
    } else {
        let line = gets();
        let a = line.trim().parse::<usize>().unwrap();
        let line = gets();
        let b = line.trim().parse::<usize>().unwrap();
        println!("{}", a + b);
    }
}
