In order to install Bandit, use `pip install bandit`{{exec}}

To see that it is installed correctly, run `bandit --version`{{exec}} to verify.

Bandit can be customized with a configuration file in YAML format. You can achieve this by creating a `.bandit` file in your project directory, to define settings like severity thresholds, file exclusions, and specific tests to skip. This is not something that you need to do for this tutorial, as we wil showcase features and cases in individual steps. However, it can be good to know that you can add rules and exclusions that are valid for your entire project.

This is an example of what a .bandit file can look like:
```yaml
#

# paths to exclude
exclude_dirs: ['tests', 'path/to/file']

# tests to skip
skips: ['B201', 'B101']

# tests to run
tests: ['B301', 'B601']
```

For a full list of options, see the Bandit configuration documentation https://bandit.readthedocs.io/en/latest/config.html

When you've looked around enough and feel satisfied, continue with the tutorial to see how to use Bandit in action! :)