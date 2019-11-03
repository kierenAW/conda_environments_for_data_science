# Git Push Pull

The scripts pushAll.sh and updateAll.sh loop through all sub-directories and perform a git pull for each sub-directory.

#### updateAll.sh
Performs a git pull only
Runs a <i>git pull</i> then a <i>git push</i>

#### pushAll.sh
Performs a git pull then git push
Runs a <i>git pull</i>

#### ResetPullAll.sh
Runs <i>git checkout -- *</i> then a <i>git pull</i> this has the ffect of removing local changed and repulling from the remote. Take care when using this as you could destroy your own work!


# .gitignore Common Features

### Ignore jupyter checkpoints
\*.ipynb_checkpoints\*

### Ignore datafiles
\*.csv<br>\*.xls<br>\*.xlsx

### Ignore images
\*.png<br>\*.jpg<br>\*.jpeg

# git lfs common files to add
<br> git lfs track "*.pdf"
<br> git lfs track "*.jpg"
<br> git lfs track "*.png"
<br> git lfs track "*.jpeg"
<br> git lfs track "*.zip"

# Useful Tools
[BFG Repo-Cleaner]("https://rtyley.github.io/bfg-repo-cleaner/") "Removes large or troublesome blobs like git-filter-branch does, but faster. And written in Scala"
