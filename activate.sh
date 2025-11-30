mft day$1-1 cppaoc cpp
daynum=$1
current=day$daynum-1.cpp
program=${current:0: -3}out
token=$(cat token.txt)
alias getin="curl -b session=$token https://adventofcode.com/2024/day/$daynum/input -o day$daynum.txt"
alias cmpl="c++pbuild -c2 -std=c++23 -g3 -a $program -s $current"
alias run="./$program < day$daynum.txt"
part2() {
    cp $current day$daynum-2.cpp
    current=day$daynum-2.cpp
    program=day$daynum-2.out
    alias cmpl="c++pbuild -c2 -std=c++23 -g3 -a $program -s $current"
    alias run="./$program < day$daynum.txt"
}
