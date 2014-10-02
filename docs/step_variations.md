
# Step variations / step flavors

Steps can be quite complex sometimes with lot of input options.

A complex, generic step might be pre-configured in multiple different variations,
this way providing multiple "steps" for the user with fewer input
fields to fill out and still use the same common code base.

An example is Bitrise's [Xcode builder step](https://github.com/bitrise-io/steps-xcode-builder)
which can run a simple Xcode build, Xcode Analyze, Xcode unit test or
and Xcode archive depending on the Step's input configuration.

This step can be pre-configured with flavors for Xcode build,
Xcode analyze, Xcode unit test and for Xcode create archive.

# How to create a step flavor?

You have to submit your flavor as a separate step.
You can use the same repository as the main step uses and just define a few input default values
or you can fork and modify the original step if you want to.

Flavors are handled the same way as separate steps are handled.

The naming convention is the following:

  [main-step-id]-flavor-[flavor-id]

For example the *xcode-builder* main step has a *create-archive* flavor,
and it's step id is: *xcode-builder_flavor_create-archive*.
