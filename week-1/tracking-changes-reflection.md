How does tracking and adding changes make developers' lives easier?
Being able to track and add changes to projects allows developers the ability to roll back changes in their programs and gives a detailed log of all of the changes.

What is a commit?
A commit is a submission of your work or save point.

What are the best practices for commit messages?
Commit messages should be set up similar to email format.  Start with a subject line summarizing the overall changes, around 50 characters.  Following that is a paragraph detailing any changes.  The two are separated by a full line.
All verbs should be in the imperative present tense: Change, not changed or changes; Fix, not fixed or fixes.  This will be consistent tense as git generated messages. The message should be thought of what this commit will do or change rather then a log of your work.  Finally the column wrap length should be 72 characters.

What does the HEAD^ argument mean?
HEAD^ refers to the previous commit. While HEAD is a reference to the current commit and HEAD~3, HEAD~4, and HEAD~5 refer to the third, fourth and five last commits, respectively.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
untracked files, ready to stage, and ready to commit. They are moved through the different stages with git add and git status.

Write a handy cheatsheet of the commands you need to commit your changes?
* git clone will copy a repo to your local workstation
* git checkout is used to switch and create new branches
* git status checks the status of all of the tracked files in the local repo
* git log will show the log of the commits
* git add will stage a file to be commited
* git commit -m "message here" will commit staged files with a message
* git branch will tell you what branch you're in and list all branches
* git pull will copy any changed files from the origin to the local computer
* git push is used to submit your branch to the origin to be merged
* git fetch will download from a repo. same as git pull?
* git merge will combine two branches
* git reset changes to a different commit, used with HEAD

What is a pull request and how do you create and merge one?
Pull requests are used to submit and merge work with the remote master. You create a pull request by pushing your branch to the origin master.  Then you need to view and confirm the request on the Github website.

Why are pull requests preferred when working with teams?
Because they allow your teammembers to view and look over your submitted work.
