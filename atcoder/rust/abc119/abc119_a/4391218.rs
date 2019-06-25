// Contest ID: abc119
// Problem ID: abc119_a ( https://atcoder.jp/contests/abc119/tasks/abc119_a )
// Title: A. Still TBD
// Language: Rust (1.15.1)
// Submitted: 2019-02-26 03:01:38 +0000 UTC ( https://atcoder.jp/contests/abc119/submissions/4391218 ) 

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
        .split_terminator('/')
        .map(|x| x.parse::<usize>().unwrap());
    let y = it.next().unwrap();
    let m = it.next().unwrap();
    let d = it.next().unwrap();
    if m <= 4 {
        println!("Heisei");
    } else {
        println!("TBD");
    }
}
