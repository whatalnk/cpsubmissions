// Contest ID: arc080
// Problem ID: arc080_c ( https://atcoder.jp/contests/arc080/tasks/arc080_c )
// Title: E. Young Maids
// Language: Rust (1.15.1)
// Submitted: 2017-08-09 15:51:36 +0000 UTC ( https://atcoder.jp/contests/arc080/submissions/1499392 ) 

use std::io;
use std::str::FromStr;
use std::cmp;
use std::cmp::Ordering;
use std::collections::BinaryHeap;
use std::collections::HashMap;

const INT_MAX: i64 = 200001;

struct SegmentTree {
    n: usize, 
    dat: Vec<i64>
}

impl SegmentTree {
    fn new(nn: usize) -> SegmentTree {
        let mut n = 1;
        while n < nn {
            n *= 2;
        }
        let dat = vec![INT_MAX; 2*n-1];
        return SegmentTree {n: n, dat: dat};
    }

    fn update(&mut self, k: usize, a: i64) {
        let mut i = k + (self.n - 1);
        self.dat[i] = a;
        while i > 0 {
            i = (i - 1) / 2;
            self.dat[i] = cmp::min(self.dat[i*2+1], self.dat[i*2+2]);
        }
    }
    fn query(&self, a: usize, b: usize, k: usize, l: usize, r: usize) -> i64 {
        if (r <= a) || (b <= l) {
            return INT_MAX;
        }
        if (a <= l) && (r <= b) {
            return self.dat[k];
        }
        let vl = self.query(a, b, k*2+1, l, (l+r)/2);
        let vr = self.query(a, b, k*2+2, (l+r)/2, r);
        return cmp::min(vl, vr);
    }
}

enum EvenOdd {
    E,
    O,
}

#[derive(Copy, Clone, Eq, PartialEq)]
struct Item {
    v: i64,
    i: usize,
    left: usize,
    right: usize,
}

// Priority Queue
impl Ord for Item {
    fn cmp(&self, other: &Item) -> Ordering {
        other.v.cmp(&self.v)
    }
}

impl PartialOrd for Item {
    fn partial_cmp(&self, other: &Item) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

fn join(v: Vec<i64>) -> String {
    let mut ret = String::new();
    let n = v.len();
    for (i, x) in v.iter().enumerate() {
        if i == n - 1 {
            ret.push_str(&format!("{}", x));
        } else {
            ret.push_str(&format!("{} ", x));
        }
    }
    return ret
}

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn split<T>(buf: String) -> Vec<T> 
  where T: std::str::FromStr,
  <T as std::str::FromStr>::Err: std::fmt::Debug {
    buf.split_whitespace()
        .map(|n| n.parse::<T>().unwrap())
        .collect()
}

fn main() {
    let n = usize::from_str(gets().trim()).unwrap();
    let arr: Vec<i64> = split(gets());

    let mut st_even = SegmentTree::new(n);
    let mut st_odd = SegmentTree::new(n);
    let mut h = HashMap::new();

    for (i, a) in arr.iter().enumerate() {
        h.insert(a, i);
        match i%2 {
            0 => st_even.update(i, a.clone()),
            _ => st_odd.update(i, a.clone()),
        }
    }

    let wrap_query = |t: EvenOdd, a: usize, b: usize, k: usize, l: usize| {
        match (t, a%2) {
            (EvenOdd::E, 0) => st_even.query(a, b, k, l, st_even.n),
            (EvenOdd::E, 1) => st_odd.query(a, b, k, l, st_odd.n),
            (EvenOdd::O, 0) => st_odd.query(a, b, k, l, st_odd.n),
            _ => st_even.query(a, b, k, l, st_even.n),
        }
    };

    let mut q = vec![0; n];
    let mut pq = BinaryHeap::<Item>::new();
    let x = wrap_query(EvenOdd::E, 0, n, 0, 0);
    pq.push(Item{v: x, i: h[&x], left: 0, right: n});
    let mut ii = 0;
    while pq.len() != 0 {
        let item = pq.pop().unwrap();
        q[ii] = item.v;
        ii = ii + 1;
        let q1 = wrap_query(EvenOdd::O, item.i, item.right, 0, 0);
        let j = h[&q1];
        q[ii] = q1;
        ii = ii + 1;

        if item.i - item.left > 1 {
            let x = wrap_query(EvenOdd::E, item.left, item.i, 0, 0);
            pq.push(Item{v: x, i: h[&x], left: item.left, right: item.i});
        }
        if j - (item.i + 1) > 1 {
            let x = wrap_query(EvenOdd::E, item.i+1, j, 0, 0);
            pq.push(Item{v: x, i: h[&x], left: item.i + 1, right: j});
        }
        if item.right - (j + 1) > 1 {
            let x = wrap_query(EvenOdd::E, j+1, item.right, 0, 0);
            pq.push(Item{v: x, i: h[&x], left: j + 1, right: item.right});
        }
    }
    println!("{}", join(q));
}
