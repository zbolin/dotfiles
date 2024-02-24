alias clone='f() { git clone git@github.com:zbolin/$1.git };f'
alias clonebb='f() { git clone git@bitbucket.org:bozilla/$1.git };f'
alias clonebbb='f() { git clone git@bitbucket.org:bozilla/$1.git -b $2 };f'
alias gs=git status
push () {
    git add .
    #git add src/main/java/com/zbolin/Solution.java
	#git add src/test/java/com/zbolin/SolutionTest.java
	#git add .gitignore
    git commit -m "dev"
    #git push
    git push --set-upstream origin master
}
