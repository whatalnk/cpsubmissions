// Contest ID: abc058
// Problem ID: abc058_a ( https://atcoder.jp/contests/abc058/tasks/abc058_a )
// Title: A. ι⊥l
// Language: Rust (1.15.1)
// Submitted: 2018-11-02 09:54:58 +0000 UTC ( https://atcoder.jp/contests/abc058/submissions/3520152 ) 

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
    if b - a == c - b {
        println!("YES");
    } else {
        println!("NO");
    }
}
