echo "Running source code sanitation"

BIN="/Applications/SEGGER Embedded Studio for ARM 4.22/llvm/bin/clang-format"
BIN="clang-format"

"$BIN" --style=file -i main.c

cppcheck main.c

python3 -m black ./packet_parser/parser.py
python3 -m black ./*.py
