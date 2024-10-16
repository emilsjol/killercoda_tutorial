# False Positive: SQL Injection
In this section, we will showcase an example where Bandit detects a false positive.

In this example, we have prepared a file with an SQL query that could seem vulnerable to SQL injections by Bandit, as the query reads data from a variable.

This can be observed in `bad_sql.py`{{}}. Please view the file by running `cat bad_sql.py`{{exec}}

Run Bandit against that file with `bandit bad_sql.py`{{exec}}.

As you can see, Bandit flags for a possible SQL injection vector. However, as the variable is hard coded and we do not query for user input in our program, we can confidently mark this as a non-issue in regards to security. We can do this by adding a `# nosec` comment, telling Bandit to ignore this line in its scan for security vulnerabilities.

Open `bad_sql.py`{{}} with vim or any other editor, and add this comment at the end for the query at line 8. Then, run the program again and observe the output of Bandit. This is what the line should look like after your changes: 
```python
    query = "SELECT * FROM car_models WHERE automaker = '%s'" % brand # nosec
```

Then, run Bandit again against that file with `bandit bad_sql.py`{{exec}}, and observe the new output.

If you have implemented your changes correctly, Bandit should not flag the SQL query as an issue anymore! 

You will be able to go to the next step of the tutorial when you have successfully implemented this change.