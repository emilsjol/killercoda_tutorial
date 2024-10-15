In this step, we have an example where Bandit detects a simple vulnerability in our code.

We have prepared a file called `bad_secrets.py`{{}}.

Run Bandit against that file by executing `bandit bad_secrets.py`{{exec}}.

As you can see, it flags for exposed sensitive information (hardcoded password string). This is one of the ways that Bandit can help you minimize leakage of sensitive information in your projects.

Bandit flags this as "Severity: low" and "Confidence: Medium". One of the features of Bandit is that it can automatically assess the severity of a suspected issue, and inform the user of how confident it is in its analysis of the Python code.

When running Bandit, it is possible to specify a minimum severity and confidence level for Bandit to flag an observation as an issue. This is achieved with the options ``` --severity-level {all,low,medium,high} ``` and ``` --confidence-level {all,low,medium,high} ```. 

For example, try running `bandit bad_secrets.py --severity-level medium`{{exec}} to filter out this low severity issue, and only show issues with a severity level of at least "Medium". (in this case, none). Bandit should now output "No issues identified".

But why would one want to skip possible issues? Isn't it best to be aware of all issues?
Of course, but if one has a large project, the amount of false positives could be overwhelming. Thus, when doing a full project scan, it could be beneficial to first do a scan with high confidence and severity levels, and fix these issues first, before observing low severity or low confidence issues that could likely be false positives or irrelevant.

In the next step, we will see another type of vulnerability discoverable by Bandit, and demonstrate how to handle false positives discovered by the tool.