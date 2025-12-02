findday() {
    daynum=0
    for i in *.cpp; do
        daynum=${i:3: -6}
    done
    $((++daynum))
}
if test ${#1} -eq 0; then
    findday
else
    daynum=$1
fi
mft day$daynum-1 cppaoc cpp
current=day$daynum-1.cpp
program=${current:0: -3}out
token=$(cat token.txt)
year=$(date +%Y)
alias getin='curl -b session=$token https://adventofcode.com/$year/day/$daynum/input -o day$daynum.txt'
alias cmpl='c++pbuild -c2 -std=c++23 -g3 -a $program -s $current'
alias run='./$program < day$daynum.txt'
alias test='./$program < sample$daynum.txt'
touch sample$daynum.txt
part2() {
    cp $current day$daynum-2.cpp
    current=day$daynum-2.cpp
    program=day$daynum-2.out
}
