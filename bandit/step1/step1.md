In this step, we will show you the most basic way to run Bandit.
First, we need some Python code to perform the security analysis on.

Create a file with:
`touch code.py`{{exec}}

Then fill it with some python code:
`echo "print('hopefully no vulnerabilities here')" > code.py`{{exec}}

Now, let's run Bandit on the code and hopefully find no vulnerabilities.

To run Bandit, run `bandit`{{}} followed by the file name, like this: `bandit code.py`{{exec}}.

If everything worked correctly, you should see output from Bandit noting that no issues were discovered. Then, you're ready to go to the next parts of the tutorial, where we will showcase some more features and scenarios! :)