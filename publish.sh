oldnum=$(printenv ACTIVE_CHECKER)
((newnum=oldnum+1))
sed -i "s/0.1.${oldnum}/0.1.${newnum}/" ./lib/active_checker/version.rb

export ACTIVE_CHECKER=$newnum
gem build active_checker.gemspec
git add .
git commit -m "Publish commit"
git push origin master