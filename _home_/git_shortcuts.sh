#!/bin/bash
commands=(
  "git add --all && git commit"
  "git diff $1"
  "git push" \
  "git push --force-with-lease" \
  "git pull"
  "git rebase $1 --rebase-merges"
  "git checkout $1"
  "git checkout . && git clean -fd"
)

for i in "${!commands[@]}"; do 
  val=$((i+1))
  printf "  %s. %s\n" "$val" "${commands[$i]}"
done

read -n1 input

case $input in
    ''|*[!1-9]*) exit 0 ;;
    *) ;;
esac

idx=$((input-1))

echo ""
echo ""
echo "Your choice: \"${commands[idx]}\""
echo "Press any key to validate"
read -n1 input
echo ""

case $idx in 
  2 | 3 | 4)
    eval "${commands[idx]} origin $(git branch | sed -n -e 's/^\* \(.*\)/\1/p')";;
  *)
    eval "${commands[idx]}";;
esac

# eval ${commands[idx]}
