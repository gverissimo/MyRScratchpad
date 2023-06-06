#set up Github
# how to: https://gist.github.com/Z3tt/3dab3535007acf108391649766409421

#### 1. Sign up at GitHub.com ################################################

## If you do not have a GitHub account, sign up here:
## https://github.com/join

# ----------------------------------------------------------------------------

#### 2. Install git ##########################################################

## If you do not have git installed, please do so:
## Windows ->  https://git-scm.com/download/win
## Mac     ->  https://git-scm.com/download/mac
## Linux   ->  https://git-scm.com/download/linux
##             or: $ sudo dnf install git-all

# ----------------------------------------------------------------------------

### 3. Configure git with Rstudio ############################################

## set your user name and email:
usethis::use_git_config(user.name = "gverissimo", user.email = "gverissi7a5@yahoo.com")

## create a personal access token for authentication:
usethis::create_github_token()
## in case usethis version < 2.0.0: usethis::browse_github_token() (or even better: update usethis!)
##defined as "R:GITHUB_PAT"
##generated token: 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

## set personal access token:
credentials::set_github_pat("R:GITHUB_PAT")

## or store it manually in '.Renviron':
usethis::edit_r_environ()
## store your personal access token in the file that opens in your editor with:
## GITHUB_PAT=xxxyyyzzz
## and make sure '.Renviron' ends with a newline

## I didn't put the token into .Renviron because I got the error message:
## "For most use cases, it is better to NOT define the PAT in `.Renviron`.
##  Instead, call `gitcreds::gitcreds_set()` to put the PAT into the
##  Git credential store."
##
## so I did that instead.

# ----------------------------------------------------------------------------

#### 4. Restart R! ###########################################################
## menu: Session>Restart R

# ----------------------------------------------------------------------------

#### 5. Verify settings ######################################################

usethis::git_sitrep()

## Your username and email should be stated correctly in the output.
## Also, the report shoud cotain something like:
## 'Personal access token: '<found in env var>''

## If you are still having troubles, read the output carefully.
## It might be that the PAT is still not updated in your `.Renviron` file.
## Call `usethis::edit_r_environ()` to update that file manually.

# ----------------------------------------------------------------------------

## THAT'S IT!
