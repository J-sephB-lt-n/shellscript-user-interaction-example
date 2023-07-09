
#!/bin/bash

set -e # exit script on first error

echo "Which book would you like to add to?"
echo "  [1] Book 1"
echo "  [2] Book 2"
echo "  [3] Both book 1 and book 2"
read book_choice
if [ $book_choice -eq 3 ]
then
    book_choice="1 2"     
    echo "You are now editing both book 1 and book 2"
else
    echo "You are now editing book ${book_choice}"
fi
echo "Which chapter(s) would you like to add to?"
echo "(please provide a single integer or a space-separated list of integers such as '1 3')"
read chapter_choice
echo "Please provide a line of text to add to chapter(s) [${chapter_choice}] in book(s) [${book_choice}]:"
read line_add
for book in $book_choice;
do
    for chapter in $chapter_choice;
    do
    echo $line_add >> book$book/chapter$chapter.txt
    done
done