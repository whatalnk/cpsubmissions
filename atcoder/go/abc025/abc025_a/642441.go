// Contest ID: abc025
// Problem ID: abc025_a ( https://atcoder.jp/contests/abc025/tasks/abc025_a )
// Title: A. 25個の文字列
// Language: Go (1.4.1)
// Submitted: 2016-02-22 06:40:03 +0000 UTC ( https://atcoder.jp/contests/abc025/submissions/642441 ) 

package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var n int
	fmt.Scan(&s)
	fmt.Scan(&n)
	a := (n - 1) / 5
	b := (n - 1) % 5
	ss := strings.Split(s, "")
	fmt.Println(ss[a] + ss[b])
}
