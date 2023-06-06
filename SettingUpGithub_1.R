##this way for some reason didn't work
##Instead refer to SettingUpGitHub_2.R

#set up Github
# how to: https://rfortherestofus.com/2021/02/how-to-use-git-github-with-r/

library(usethis)
create_github_token()
#generated github token: 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

library(gitcreds)
gitcreds_set()
