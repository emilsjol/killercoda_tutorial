# False Positive: SQL Injection
In this section, we will showcase an example where Bandit detects a false positive.

In this example, we have prepared a file with an SQL query that could seem vulnerable to SQL injections by Bandit, as the query reads data from a variable. 

This can be observed in `bad_sql.py`{{}}

Run Bandit against that file with `bandit bad_sql.py`{{exec}}.

As you can see, Bandit flags for a possible SQL injection vector. However, as the variable is hard coded and we do not query for user input in our program, we can confidently mark this as a non-issue in regards to security. We can do this by adding a `# nosec` comment, telling Bandit to ignore this line in its scan for security vulnerabilities.

Open `bad_sql.py`{{}} with vim or any other editor, and add this comment at the end for the query at line 8. Then, run the program again an observe the output of Bandit.