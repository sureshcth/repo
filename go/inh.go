package main

import (	"fmt"
)

type Prereqs []interface{}
type PType struct{
	PT Prereqs
	I int
}

func (prereqs *Prereqs)Add(){
	var i int
	i = 10
	*prereqs = append(*prereqs, &i)
}

func (pt *PType)Add(){
	pt.PT.Add()
	pt.PT.Add()
}

type T struct{
	I int
}

type O struct{
	T
}

func (o O)doit(){
	fmt.Println("OKKK")
}

func (o O)Printit(){
	fmt.Println(o.I)
}

func main() {
	fmt.Println("Hello")
	p := PType{}
	p.Add()
	p.Add()
	fmt.Println(len(p.PT))
	o := O{}
	o.I = 343
	o.Printit()
	o.doit()
	
	t := T{}
	t.I = 400
	o, _ = (*t).(O)
	o.doit()
	
}

