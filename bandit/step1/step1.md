# Basic usage
To run Bandit, we first need some Python code to perform security linting on

Create a file with:

`touch code.py`{{exec}}

Fill it with some python code:

`echo "print('hopefully no vulnerabilities here')" > code.py`{{exec}}

Now, let's run Bandit on the code and hopefully find no vulnerabilities :)

To use Bandit, type `bandit`{{}} followed by the file name, like so:

`bandit code.py`{{exec}}