// Contest ID: abc023
// Problem ID: abc023_a ( https://atcoder.jp/contests/abc023/tasks/abc023_a )
// Title: A. 加算王
// Language: Go (1.4.1)
// Submitted: 2016-02-25 15:00:51 +0000 UTC ( https://atcoder.jp/contests/abc023/submissions/644414 ) 

package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)
	a := x / 10
	b := x % 10
	fmt.Println(a + b)
}
