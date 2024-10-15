In order to install Bandit, run `pip install bandit`{{exec}}.

Then, you can run `bandit --version`{{exec}} to verify your installation and display the installed version.

After this simple installation, Bandit is ready to be used without further configuration needed. However, there are many different configurations and options that one can use with Bandit. These come both in the form as command line options and configuration files, but also in the form of in-line comments that you can add to your project's Python source code. We will showcase some examples of this later in the tutorial.

In regards to configuration files Bandit can be customized with a configuration file in YAML format. This is achieved by creating a `.bandit` file in your project directory, and in this file you can define settings like severity thresholds, file exclusions, and specific tests to skip. This is not something that you need to do for this tutorial, as we wil showcase some of these features and cases in individual steps. However, it can be good to know that you can add rules and exclusions that are valid for your entire project, and not just specific runs. This can be relevant if you have a larger project, and want to handle specific files differently.

This is an example of what a .bandit configuration file can look like:
```yaml
# paths to exclude
exclude_dirs: ['tests', 'path/to/file']

# tests to skip
skips: ['B201', 'B101']

# tests to run
tests: ['B301', 'B601']
```

For a full list of options, see the Bandit configuration documentation https://bandit.readthedocs.io/en/latest/config.html

Our verification script will ensure that Bandit is properly installed before you are able to continue to the next part of the tutorial. When you have installed Bandit and looked around enough and feel satisfied, please continue with the tutorial to see how to use Bandit in action! :) 
