// Contest ID: abc029
// Problem ID: abc029_b ( https://atcoder.jp/contests/abc029/tasks/abc029_b )
// Title: B. カキ
// Language: Go (1.4.1)
// Submitted: 2016-03-03 03:24:57 +0000 UTC ( https://atcoder.jp/contests/abc029/submissions/651175 ) 

package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	ret := 0
	for i := 0; i < 12; i++ {
		fmt.Scan(&s)
		if strings.Contains(s, "r") {
			ret++
		}
	}
	fmt.Println(ret)
}
