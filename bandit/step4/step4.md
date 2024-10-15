# Directory Scanning

Bandit can also be used to search a whole directory of files, recursively.

To recursively search a directory, pass the `-r`{{}} flag to bandit.

Try it on the `test-directory`{{}} we have provided by running

`bandit -r ./test-directory`{{exec}}

When analysing multiple files, especially in larger projects, the terminal output is likely to be cluttered if many files are scanned and multiple issues observed. Thankfully, Bandit offers different output formatting options for creating analysis reports. There are multiple formats supported, such as JSON, CSV, HTML, XML, YAML, etc.

For example, to output the analysis as a JSON document, use the options `-o output_file` and `--format json`. You can try this by executing the following command: `bandit -r ./test-directory -o report.json --format json`{{exec}} and then viewing the report with ``cat report.json``{{exec}}.