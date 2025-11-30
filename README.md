# adventofcode-script
A script for getting input, compilling, and running C++ code for advent of code.
### Usage
You will need [mft](https://github.com/CubedProgrammer/linux_utility).
Copy the templates into your ./ftemplates directory and rename it to `.cppaoc`.

Put your session cookie for your advent of code account into a file called `token.txt`.

Then, run `source activate.sh DAY` where DAY is the day you want to do.
### Commands
The following command are provided.

`getin` fetches the input of the day.

`cmpl` compiles the C++ code.

`run` executes the C++ code on the input. You can manually run the generated program executable to use stdin instead.

`part2` changes variables to move on to part two.
