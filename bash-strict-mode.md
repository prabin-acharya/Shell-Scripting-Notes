# Bash Strict Mode


Linux Bash provides the scripting capabilities which is very familiar with programming languages. But while
developing bash scripts there are a lot of pitfalls because it is not a complete programming language
and provides a lot of empty areas. Your bash scripts will be more robust, reliable and maintainable if you start them like this:

```
#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

```

Here, the set lines deliberately cause your script to fail. With these settings, certain common errors will cause the script
to immediately fail, explicitly and loudly. Otherwise, you can get hidden bugs that are discovered only when they blow up in production.
`set -euo pipefail` is short for:

```
set -e
set -u
set -o pipefail
```
Let's look at each separately.


## set -e
The set -e option instructs bash to immediately exit if any command has a non-zero exit status. 
You wouldn't want to set this for your command-line shell, but in a script it's massively helpful.

By default, bash does not do this.  If one line in a script fails, but the last line succeeds, 
the whole script has a successful exit code. That makes it very easy to miss the error. Being intolerant 
of errors is a lot better in scripts, and that's what set -e gives you.

## set -u
By default, When set a reference to any variable you haven't previously defined - with the exceptions 
of $* and $@ - does not cause any error. Adding `set -u` throws an error. This is what you want: have it 
fail explicitly and immediately, rather than create subtle bugs that may be discovered too late.

## set -o pipefail
This setting prevents errors in a pipeline from being masked.  If any command in a pipeline fails,
that return code will be used as the return code of the whole pipeline. By default, the pipeline's return code as that of the last command.



### Notes :
`echo $?` returns the exit status of last command. It is useful in shellscripts as a way to decide what
to do depending on how the previous command worked (checking the exit status). We can expect that the 
exit status is 0 when the previous command worked (finished successfully), otherwise a non-zero numerical value.


### Notes  from : http://redsymbol.net/articles/unofficial-bash-strict-mode/, https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
