package main

import "fmt"

func main() {
    a, s := 'a', "cdiiddwpgswtgt"
    for i := 0; i < 26; i++ {
        for _, c := range s { fmt.Print(string(a + (c - a + int32(i)) % 26)) }
        fmt.Println()
    }
}
