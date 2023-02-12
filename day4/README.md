# day04

This day I used bash and it was... different x)

## part1
This was pretty mediocre at best.
Also had to sed-format this list, I did that in VIM with 
> %s/-/ /
and
> %s/,/ /

## part2

for the second part I took inspiration fron reddit where people had used onelines in all kinds of different languages to solve their problems.
I ended up with this:
> cat input.txt | sed -e 's/,/-/' | awk -F "-" '($2 < $3){a+=1; next} ($4 < $1){a+=1} END{print(NR-a)}'


