#!/bin/bash
curl http://venam.nixers.net/nixers_intro.html | awk '/div class="code">/ { p=1 } p { print($0) } /<\/div/ { p=0}' | sed 's/<[^>]\+>//' | awk '$0!~/^$/ { print($0) }' | sed 's/^ //' >intros
curl http://c9x.me/cbits/markov.c >markov.c
curl http://c9x.me/cbits/avl.c >avl.c
#compile the code
cc avl.c markov.c -o markov
./markov -c 10 intros

