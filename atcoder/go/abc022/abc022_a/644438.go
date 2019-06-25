// Contest ID: abc022
// Problem ID: abc022_a ( https://atcoder.jp/contests/abc022/tasks/abc022_a )
// Title: A. Best Body
// Language: Go (1.4.1)
// Submitted: 2016-02-25 15:34:36 +0000 UTC ( https://atcoder.jp/contests/abc022/submissions/644438 ) 

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func gets() string {
	var text string
	if scanner.Scan() {
		text = scanner.Text()
	}
	return text
}

// func nextInt() int {
// 	scanner.Scan()
// 	i, _ := strconv.Atoi(scanner.Text())
// 	return i
// }

func main() {
	var n, s, t, w int
	var ret int
	fmt.Scan(&n)
	fmt.Scan(&s)
	fmt.Scan(&t)
	fmt.Scan(&w)
	for i := 1; i < n; i++ {
		if w >= s && w <= t {
			ret++
		}
		a, _ := strconv.Atoi(gets())
		w += a
	}
	if w >= s && w <= t {
		ret++
	}
	fmt.Println(ret)
	// scanner.Split(bufio.ScanWords)
	// a := nextInt()
	// d := nextInt()
}
