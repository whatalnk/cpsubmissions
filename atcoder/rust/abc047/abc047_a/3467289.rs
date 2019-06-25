// Contest ID: abc047
// Problem ID: abc047_a ( https://atcoder.jp/contests/abc047/tasks/abc047_a )
// Title: A. キャンディーと2人の子供 / Fighting over Candies
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 10:09:25 +0000 UTC ( https://atcoder.jp/contests/abc047/submissions/3467289 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let v: Vec<i32> = line
        .trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap())
        .collect();
    if v[0] + v[1] == v[2] || v[1] + v[2] == v[0] || v[0] + v[2] == v[1] {
        println!("Yes");
    } else {
        println!("No");
    }
}
