
# How to test a new Step or a new Step Version?

0. Suggestion: fork the repository before testing - this will make the online / production testing easier
1. Test it in your local machine (we suggest to test in a Virtual Machine - also a best practice to save a snapshot of the VM before you start testing and roll back to the snapshot after every test / before you would start to test it in production)
2. Test it (suggestion: the forked version) with the [step-tester-and-validator step](https://github.com/bitrise-io/steps-step-tester-and-validator). You can use it on an online StepLib provider like [Bitrise](http://www.bitrise.io).


# How to submit the new Step or Version into the StepLib?

1. Fork the [StepLib](https://github.com/steplib/steplib) repository.
2. Add your Step or Version to the **steps/** folder.
3. Create a pull request.

Once your pull request is accepted your step or version will appear on the [StepLib website](http://www.steplib.com/) with a few minute delay.