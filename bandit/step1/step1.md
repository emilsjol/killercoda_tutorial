To run Bandit, we first need some Python code to perform security linting on

Create a file with:

`touch code.py`{{exec}}

Fill it with some python code:

`cat print('hopefully no vulnerabilities here') > code.py`{{exec}}

Now, let's run Bandit on the code and hopefully find no vulnerabilities :)

To use Bandit, type `bandit` followed by the file name, like so:

`bandit cody.py`{{exec}}

<!-- Example with warning -->
### Single line code blocks can be copied by default
`copy me`

### It can also be disabled
`copying disabled`{{}}

### Execute a command per click
`ls -lh`{{exec}}

### Send Ctrl+c before execute
Run a blocking command:
`sleep 1d`{{exec}}

End it and run another:
`whoami`{{exec interrupt}}

### Copy multiline code block
```
uname -r
pwd
```{{copy}}

### Execute multiline code block

```
uname -r
pwd
```{{exec}}


### Execute multiline code block with Ctrl+c
Run a blocking command:
`sleep 1d`{{exec}}

End it and run others:
```
uname -r
whoami
```{{exec interrupt}}
