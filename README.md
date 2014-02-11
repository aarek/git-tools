git-tools
=========

Repository containing scripts to help with my day to day git work

git-cleanup-branches
--------------------

If one day you wake up, like me, with tons of branches, which are already merged to master, you may want to delete some of them.
This is the tool to help review and delete branches in one shot

```
➭ git cleanup-branches -h
Cleanup merged branches
Usage: git cleanup-branches [-l -h] [-n NUM_COMMITS] [-k KEEP]

Specific options:
    -l, --local-only                 Clenup only local branches
    -n, --num-commits [NUM_COMMITS]  limit commits to num-commits, defaults to 5
    -k, --keep branch,branch2        keep branches
    -h, --help                       help
```

Options are as follow:
* -l, --local-only - if you don't want to touch remote branches then set this flag
* -n, --num-commits [NUM_COMMITS] - when reviewing branch you wil be shown 5 last commits from that branch. Here you can change this value
* -k, --keep branch,branch2 - pass comma separated list of branches which you are sure you want to keep. This branches will be skipped upon whole process

![git-cleanup-branches screenshot](https://raw2.github.com/aarek/git-tools/master/img/screenshot-git-cleanup-branches1.png "git-cleanup-branches screenshot")

git-merged-branches-differences
-------------------------------

```
➭ git merged-branches-difference
Show differnces in merged branches between two branches
Usage: git merged-branches-differences left right
```

This script will show you which branches are merged to left branch and not to right, and which are merged to right branch and not to left

git-change-author
-----------------

```
➭ git change-author -h
Change author name and email
Usage: git change-author [-n OLD_NAME NEW_NAME] [-e OLD_EMAIL NEW_EMAIL]

Specific options:
    -n, --name OLD_NAME,NEW_NAME     Change author & committer name
    -e, --email OLD_NAME,NEW_NAME    Change author & committer email
    -h, --help                       Show this message
```

git-update
----------

Update all projects of your workspace

git-zip
-------

Create package with files from your repository


### Installation:
Make sure the scripts are on your PATH and are executable:
```
chmod +x script
```
