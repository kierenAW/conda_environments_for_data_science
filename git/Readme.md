# Git Push Pull

The scripts pushAll.sh and updateAll.sh loop through all sub-directories and perform a git pull for each sub-directory.

#### updateAll.sh
Performs a git pull only

#### pushAll.sh
Performs a git pull then git push

# .gitignore Common Features

### Ignore jupyter checkpoints
\*.ipynb_checkpoints\*

### Ignore datafiles
\*.csv<br>\*.xls<br>\*.xlsx

### Ignore images
\*.png<br>\*.jpg<br>\*.jpeg

# Useful Tools
[BFG Repo-Cleaner]("https://rtyley.github.io/bfg-repo-cleaner/") "Removes large or troublesome blobs like git-filter-branch does, but faster. And written in Scala"
