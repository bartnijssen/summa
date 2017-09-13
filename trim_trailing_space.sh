#! /bin/bash
# trim_trailing_space.sh
# Trailing white space be gone!
# Run from the top level of a code directory. It will recursively visit all
# directories and strip white space from text files. It skips the top level
# .git directory

if [[ `uname` == 'Darwin' ]]; then
  # OS X
  find . -path ./.git -prune -o -type f -exec grep -Iq . {} \;  -print -exec sed -E -i '' 's/[[:space:]]*$//' {} \;
else
  find . -path ./.git -prune -o -type f -exec grep -Iq . {} \;  -print -exec sed -i 's/[[:space:]]*$//' {} \;
fi
