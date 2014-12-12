The Open Step Library (StepLib)
=======

The StepLib website is available at [http://www.steplib.com/](http://www.steplib.com/) and the website repository on [GitHub](https://github.com/steplib/website).

If you can't find a suitable Step in the library then you can either add your own (you can find more information about how you can submit your own step in the */docs* folder) or if you don't have the time to create one by yourself you can propose one by creating a [new issue](https://github.com/steplib/steplib/issues) with the *[proposal]* prefix.

You can find **annotated templates** in the */templates* folder.

## Create your own Step

One of the design goals of StepLib is to keep the Step format as simple as possible.

Strictly speaking this is all you need for a Step repository:

* a step.sh entry point file: this will be called by the StepLib systems. There's no requirement for this, just that it have to be a valid bash script. You can call another script (written in your favorite script language) or install other components (with apt-get, brew, ...) right away from this script, this is just used as the entry point of your Step.
* a step.yml descriptor file: this file will be used for UIs and for integration into StepLib systems.
* LICENSE file: read more about why it's important to have a license file in your open source repository in the example *templates/step/LICENSE* file. We don't accept steps into the StepLib without a license included in it!
* README file: technically it's not required

**The */templates/step* folder** contains everything what's required for a valid step repository,
with additional notes.

**Detailed description of the Step repository** format can be found in *docs/step_format.md*.

**Recommendations, advanced tips and tricks for Step development** can be found in *docs/step_dev_notes.md*.


## Request/Propose a new Step

If you don't have the time to create your own Step you can propose one by creating a new issue with the *[proposal]* prefix:

* create a [new issue on GitHub](https://github.com/steplib/steplib/issues)
  * prefix the Title of the issue with: **[proposal]**
  * example: *[proposal] Heroku deploy*
* in the description try to explain how the step should work and provide as much useful information as you can (for example if you request a service integration step you could include a link to the official developer docs site)


## Contributing: how to add your own Step or update a Step Version

1. Fork it
2. Create your branch for the new step or version (git checkout -b new-step-super-useful-thing)
3. Commit your changes (git commit -am 'This new step (or version) does X and Y and Z')
4. Push to the branch (git push origin new-step-super-useful-thing)
5. Create a Pull Request


# Development Roadmap

## What we want to achieve with StepLib?

* An open source CI/CD and build automation system, with easy install, but highly modular: can be used for any kind of pipeline based automation, like web hook transformation, file conversion or for CI/CD build pipeline automation
* Can be used with or without a web server, can be run from the terminal directly, used by online services or used on your own VPS


## V1 roadmap

Specification and existing step improvements:

* workflow format specification
* Step Icons - with URL to the icon or embedded in the step repository?
* step variations (Xcode build - common code, pre-configured variations)
* question: extend the step.yml format with license information? So it can be presented on the StepLib and other collection websites?
* read-only inputs, default input values
  * step's responsibility to define which inputs are meant to be read-only or to map a default value
  * these options can be used in step-variations / step-flavors to have a fully customizable step and a few flavors with some of the inputs predefined
  * an example of this is the Xcode builder step: the base step is huge, it can do a lot of different things based on the inputs; different pre-defined flavors of it can be added so that when you use these you don't have to fill our all the inputs the base step can take
* Steplib: Data encryption policy/guideline
* Steplib: open(source) policy - (explain) why only public GitHub repositories are accepted as steps
* clean up existing/initial steps: do not depend on Bitrise's environment setup


## V2 roadmap

* A CLI (Command Line Interface) for running your workflow on your own machine
* minimal descriptions (StepLib website pages):
  * what is a step (intro and link to docs)
  * how to install the cli and run your first workflow - check vagrant!


## V3 roadmap

Workflow editor to make it easy to create your workflow.


## V4 roadmap

A base web server so you can use your workflow as a service.

