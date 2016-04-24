package main

import (

"fmt"

"net/http"

"os"

)

func handler(w http.ResponseWriter, r *http.Request) {

h, _ := os.Hostname()

fmt.Fprintf(w, "<h2>Hi there, I'm served from %s!</h2>", h)

}

func main() {

http.HandleFunc("/", handler)

http.ListenAndServe(":8484", nil)

}
