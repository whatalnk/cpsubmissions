// Contest ID: abc030
// Problem ID: abc030_a ( https://atcoder.jp/contests/abc030/tasks/abc030_a )
// Title: A. 勝率計算
// Language: Go (1.4.1)
// Submitted: 2016-02-19 06:11:51 +0000 UTC ( https://atcoder.jp/contests/abc030/submissions/639953 ) 

package main

import (
	"fmt"
)

func main() {
	var a, b, c, d float64
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)
	if b/a > d/c {
		fmt.Println("TAKAHASHI")
	} else if b/a < d/c {
		fmt.Println("AOKI")
	} else {
		fmt.Println("DRAW")
	}
}
