echo "Running source code sanitation"

BIN="/Applications/SEGGER Embedded Studio for ARM 5.10/llvm/bin/clang-format"
BIN="clang-format"

"$BIN" --style=file -i *.cpp
"$BIN" --style=file -i *.h

cppcheck *.cpp *.h
