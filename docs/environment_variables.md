StepLib expects every input for a Step as an Environment Variable.

This is the current list of supported Environment Variables:

* `STEPLIB_BUILD_STATUS`: **dynamic**, defined as `1` if there was an error in a previous Step, undefined or `0` if there was no error so far.
* `STEPLIB_SOURCE_DIR`: full dir path of the Git repository
...
