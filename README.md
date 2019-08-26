**1. Usage**

Clone the repo locally
> git clone https://github.com/overwatchftw/boo.git

CD to the cloned repo
> cd boo

Update the remote origin URL
> git remote set-url origin git+ssh://git@github.com/overwatchftw/boo.git

Configure git to use the private key included with the repo
> git config core.sshCommand 'ssh -i boo'

** Since the user is unknown, we use a deploy key, included in the repo itself. Not secure, but will do the job. **


**2. Requirements**

bash interpreter located at /bin/bash

git is in the $PATH




**3. Run it**

From within the repo dir
> ./boo.sh [optional_arg]




**4. Example**

> ./boo.sh cli_repo_tag_01


Pushing new tags: **TIMESTAMP, cli_repo_tag_01**
**DONE**

**Current tags:**

TIMESTAMP

cli_repo_tag_01



