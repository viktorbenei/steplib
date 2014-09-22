
# How to test your Step before submission

## Test locally

*We suggest you to use a Virtual Machine for Step testing.*

Run your step:

`PARAM_ENV1=VAL1 PARAM_ENV2=VAL2 bash step.sh`

Test it as much as you can. We suggest to include unit tests too.

Once your Step works as you expect it you can submit your Step.

## Test on a hosted Step Host service

For example on [Bitrise](http://www.bitrise.io/).

We recommend for Step Host services to include some capabilities to
test your Steps before submission.

[Bitrise](http://www.bitrise.io/) for example has
a [special Step](https://github.com/bitrise-io/steps-step-tester-and-validator)
to help you with testing your Step.


# How to submit a new Step or a new version

All you have to do is:

* fork this repository
* add your step into *steps/[your-step-name]/[your-version]*
  * for the proper step repository format see the *step_format.md* guide
* create a pull request

Once the pull request is accepted it'll appear on the StepLib website
after a few minutes.
