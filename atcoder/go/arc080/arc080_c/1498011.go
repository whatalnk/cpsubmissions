// Contest ID: arc080
// Problem ID: arc080_c ( https://atcoder.jp/contests/arc080/tasks/arc080_c )
// Title: E. Young Maids
// Language: Go (1.6)
// Submitted: 2017-08-09 00:26:52 +0000 UTC ( https://atcoder.jp/contests/arc080/submissions/1498011 ) 

package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var bufSize = 1000000
var rdr = bufio.NewReaderSize(os.Stdin, bufSize)
var intMax = 200001
var maxN = 1 << 17

var stEven SegmentTree
var stOdd SegmentTree

func readLine() string {
	buf := make([]byte, 0, bufSize)
	for {
		l, p, _ := rdr.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func splitWhiteSpace(line string) []int {
	arr := strings.Fields(line)
	n := len(arr)
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i], _ = strconv.Atoi(arr[i])
	}
	return ret
}

type SegmentTree struct {
	dat []Item
	n   int
}

func stInit(nn int) SegmentTree {
	n := 1
	for n < nn {
		n *= 2
	}
	dat := make([]Item, 2*n-1)
	for i := 0; i < 2*n-1; i++ {
		dat[i] = Item{intMax, 0, 0, 0}
	}
	return SegmentTree{dat, n}
}

func (st *SegmentTree) update(k, a int) {
	v := Item{a, k, 0, 0}
	k += (st.n - 1)
	st.dat[k] = v
	for k > 0 {
		k = (k - 1) / 2
		if st.dat[k*2+1].min < st.dat[k*2+2].min {
			st.dat[k] = st.dat[k*2+1]
		} else {
			st.dat[k] = st.dat[k*2+2]
		}
	}
}

func (st *SegmentTree) query(a, b, k, l, r int) Item {
	if (r <= a) || (b <= l) {
		return Item{intMax, 0, 0, 0}
	}
	if (a <= l) && (r <= b) {
		return st.dat[k]
	}
	vl := st.query(a, b, k*2+1, l, (l+r)/2)
	vr := st.query(a, b, k*2+2, (l+r)/2, r)
	if vl.min < vr.min {
		return vl
	}
	return vr
}

func wrapQuery(t string, a, b, k, l int) Item {
	var ret Item
	if t == "even" {
		if a%2 == 0 {
			ret = stEven.query(a, b, k, l, stEven.n)
		} else {
			ret = stOdd.query(a, b, k, l, stOdd.n)
		}
	} else {
		if a%2 == 0 {
			ret = stOdd.query(a, b, k, l, stOdd.n)
		} else {
			ret = stEven.query(a, b, k, l, stEven.n)
		}
	}
	return ret
}

type Item struct {
	min   int
	i     int
	left  int
	right int
}

type PriorityQueue []*Item

func (pq PriorityQueue) Len() int {
	return len(pq)
}
func (pq PriorityQueue) Less(i, j int) bool {
	return pq[i].min < pq[j].min
}
func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
}
func (pq *PriorityQueue) Push(x interface{}) {
	*pq = append(*pq, x.(*Item))
}
func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	x := old[n-1]
	*pq = old[0 : n-1]
	return x
}

func main() {
	var line string
	line = readLine()
	n, _ := strconv.Atoi(line)
	line = readLine()
	arr := splitWhiteSpace(line)
	stEven = stInit(n)
	stOdd = stInit(n)
	for i, v := range arr {
		if i%2 == 0 {
			stEven.update(i, v)
		} else {
			stOdd.update(i, v)
		}
	}
	q := make([]string, n)
	pq := &PriorityQueue{}
	heap.Init(pq)
	x := wrapQuery("even", 0, n, 0, 0)
	heap.Push(pq, &Item{x.min, x.i, 0, n})
	ii := 0
	for pq.Len() != 0 {
		item := heap.Pop(pq).(*Item)
		q[ii] = strconv.Itoa(item.min)
		ii++
		q1 := wrapQuery("odd", item.i, item.right, 0, 0)
		j := q1.i
		q[ii] = strconv.Itoa(q1.min)
		ii++
		if item.i-item.left > 1 {
			x0 := wrapQuery("even", item.left, item.i, 0, 0)
			heap.Push(pq, &Item{x0.min, x0.i, item.left, item.i})
		}
		if j-(item.i+1) > 1 {
			x1 := wrapQuery("even", item.i+1, j, 0, 0)
			heap.Push(pq, &Item{x1.min, x1.i, item.i + 1, j})
		}
		if item.right-(j+1) > 1 {
			x2 := wrapQuery("even", j+1, item.right, 0, 0)
			heap.Push(pq, &Item{x2.min, x2.i, j + 1, item.right})
		}
	}
	fmt.Println(strings.Join(q, " "))
}
