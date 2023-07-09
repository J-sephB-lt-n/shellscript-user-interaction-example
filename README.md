# shellscript-user-interaction-example
An example of how to integrate user input into a bash script

The file/folder structure of this example project is as follows:

```console
.
├── LICENSE
├── README.md
├── book1
│   ├── chapter1.txt
│   ├── chapter2.txt
│   └── chapter3.txt
├── book2
│   ├── chapter1.txt
│   ├── chapter2.txt
│   └── chapter3.txt
└── process.sh
```

All of the text files you can see currently in this git repo were populated using the script [process.sh](process.sh) in terminal as follows: 

```console
joe@Josephs-laptop shellscript-user-interaction-example % bash process.sh
Which book would you like to add to?
  [1] Book 1
  [2] Book 2
  [3] Both book 1 and book 2
1
You are now editing book 1
Which chapter(s) would you like to add to?
(please provide a single integer or a space-separated list of integers such as '1 3')
1 2 3
Please provide a line of text to add to chapter(s) [1 2 3] in book(s) [1]:
this is book 1
joe@Josephs-laptop shellscript-user-interaction-example % bash process.sh
Which book would you like to add to?
  [1] Book 1
  [2] Book 2
  [3] Both book 1 and book 2
2
You are now editing book 2
Which chapter(s) would you like to add to?
(please provide a single integer or a space-separated list of integers such as '1 3')
1 2 3
Please provide a line of text to add to chapter(s) [1 2 3] in book(s) [2]:
this is book 2
joe@Josephs-laptop shellscript-user-interaction-example % bash process.sh
Which book would you like to add to?
  [1] Book 1
  [2] Book 2
  [3] Both book 1 and book 2
3
You are now editing both book 1 and book 2
Which chapter(s) would you like to add to?
(please provide a single integer or a space-separated list of integers such as '1 3')
2  
Please provide a line of text to add to chapter(s) [2] in book(s) [1 2]:
this is an even-numbered chapter
joe@Josephs-laptop shellscript-user-interaction-example % bash process.sh
Which book would you like to add to?
  [1] Book 1
  [2] Book 2
  [3] Both book 1 and book 2
3
You are now editing both book 1 and book 2
Which chapter(s) would you like to add to?
(please provide a single integer or a space-separated list of integers such as '1 3')
1 3 
Please provide a line of text to add to chapter(s) [1 3] in book(s) [1 2]:
this is an odd-numbered chapter
```