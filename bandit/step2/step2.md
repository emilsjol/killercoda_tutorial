# Hardcoded secrets
In this step, we have an example where Bandit detects a simple vulnerability in our code.

We have prepared a file called `bad_secrets.py`{{}}.

Run Bandit against that file by executing `bandit bad_secrets.py`{{exec}}.

As you can see, it flags for exposed sensitive information (harcoded password string). This is one of the ways that Bandit can help you minimize leakage of sensitive information in your projects.

In the next step, we will see another type of vulnerability discoverable by Bandit, and demonstrate how to handle false positives discovered by the tool.