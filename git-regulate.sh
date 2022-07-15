#!/bin/zsh


# set -o errexit

branchname='[base-branch-name]'

while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -b | --branchname )
    shift; branchname=$1
    $branchname
    ;;
  -f | --force)
    force_reset=1
    
    ;;
  -c | --cleanbranches)
    clean_branches=1
    ;;
esac; shift; done



echo 'Standardizing on branch: '${branchname}'\n'

for d in */ ; do
  cd "$d"

  echo Repo: ${d}

  if [[ "$force_reset" ]]; then
    echo 'Rolling back any local changes...'
    git reset --hard
  fi

  git checkout $branchname
  git pull -q
  
  if [[ "$clean_branches" ]]; then
    echo 'Removing local feature branches...'
   # git branch -l | grep -v "main\|Release"
    git branch -l| grep -v "main\|Release" | xargs git branch -D
  fi
 
  echo '\n'
  cd ..
  
done
