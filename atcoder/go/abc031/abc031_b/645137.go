// Contest ID: abc031
// Problem ID: abc031_b ( https://atcoder.jp/contests/abc031/tasks/abc031_b )
// Title: B. 運動管理
// Language: Go (1.4.1)
// Submitted: 2016-02-27 03:55:16 +0000 UTC ( https://atcoder.jp/contests/abc031/submissions/645137 ) 

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	scanner.Scan()
	i, _ := strconv.Atoi(scanner.Text())
	return i
}

func main() {
	scanner.Split(bufio.ScanWords)
	l := nextInt()
	h := nextInt()
	n := nextInt()
	for i := 0; i < n; i++ {
		a := nextInt()
		if a < l {
			fmt.Println(l - a)
		} else if a <= h {
			fmt.Println(0)
		} else {
			fmt.Println(-1)
		}
	}
}
