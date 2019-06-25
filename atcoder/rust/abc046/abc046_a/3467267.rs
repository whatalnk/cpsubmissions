// Contest ID: abc046
// Problem ID: abc046_a ( https://atcoder.jp/contests/abc046/tasks/abc046_a )
// Title: A. AtCoDeerくんとペンキ / AtCoDeer and Paint Cans
// Language: Rust (1.15.1)
// Submitted: 2018-10-25 10:05:59 +0000 UTC ( https://atcoder.jp/contests/abc046/submissions/3467267 ) 

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
    if v[0] == v[1] && v[0] == v[2] {
        println!("1");
    } else if v[0] == v[1] || v[1] == v[2] || v[0] == v[2] {
        println!("2");
    } else {
        println!("3");
    }
}
