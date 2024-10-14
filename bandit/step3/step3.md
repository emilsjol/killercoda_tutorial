Now, we will showcase an example where Bandit detects an issue.

Bandit has a lot of different things it can check for. For example it can check for non-suitable imports commonly used for malicious purposes, such as Pickle.

We have prepared a file called bad_imports.py

Run Bandit against that file with ´bandit bad_imports.py´{{exec}}.

Take note of any issues you find.

This is an example of how Bandit can detect issues with a file.