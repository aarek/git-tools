git-tools
=========

Repository containing scripts to help with my day to day git work

git-cleanup-branches
--------------------

If one day You wake up, like me, with tons of branches, which are already merged to master, You may want to delete some of them. 
This is the tool to help review and delete branches in one shot

```
➭ git cleanup-branches -h
Cleanup merged branches
usage: git cleanup-branches [-l -h] [-n NUM_COMMITS] [-k KEEP]

Specific options:
    -l, --local-only                 Clenup only local branches
    -n, --num-commits [NUM_COMMITS]  limit commits to num-commits, defaults to 5
    -k, --keep branch,branch2        keep branches
    -h, --help                       help
```

Options are as follow:
* -l, --local-only - if You don't want to touch remote branches then set this flag
* -n, --num-commits [NUM_COMMITS] - when reviewing branch You wil be shown 5 last commits from that branch. Here You can change this value
* -k, --keep branch,branch2 - pass comma separated list of branches which You are sure You want to keep. This branches will be skipped upon whole process

![git-cleanup-branches screenshot](https://raw2.github.com/aarek/git-tools/master/img/screenshot-git-cleanup-branches1.png "git-cleanup-branches screenshot")

### Installation:
make sure the script is on your PATH and is executable
