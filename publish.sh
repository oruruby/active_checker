((num1=$(printenv ACTIVE_CHECKER)+1))
export ACTIVE_CHECKER=$num1
gem build active_checker.gemspec --output=active_checker.gem
git add .
git commit -m "Publish commit"
git push origin master

