The Open Step Library (StepLib)
=======

The StepLib website is available at [http://www.steplib.com/](http://www.steplib.com/) and the website repository on [GitHub](https://github.com/steplib/website).

If you can't find a suitable Step in the library then you can either add your own (you can find more information about how you can submit your own step in the */docs* folder) or if you don't have the time to create one by yourself you can propose one by creating a [new issue](https://github.com/steplib/steplib/issues) with the *[proposal]* prefix.

You can find **annotated templates** in the */templates* folder and a **full template Step repository** on GitHub: [https://github.com/steplib/step-template](https://github.com/steplib/step-template).

*StepLib is under active development. The project was started by [Bitrise](http://www.bitrise.io/) developers
and is mainly maintained and developed by Bitrise developers at the moment. That said this project is meant to be open from the start and we would be happy to welcome others as active maintainers and contributors.*

*We'll keep releasing open source tools for StepLib once we find the best solution
for a problem. An offline Command Line Interface (CLI) tool is planned for the near future - for more
information on the tools we plan to release please see the `Development Roadmap` section below.*


## Create your own Step

One of the design goals of StepLib is to keep the Step format as simple as possible.

Strictly speaking this is all you need for a Step repository:

* a step.sh entry point file: this will be called by the StepLib systems. There's no requirement for this, just that it have to be a valid bash script. You can call another script (written in your favorite script language) or install other components (with apt-get, brew, ...) right away from this script, this is just used as the entry point of your Step.
* a step.yml descriptor file: this file will be used for UIs and for integration into StepLib systems.
* LICENSE file: read more about why it's important to have a license file in your open source repository in the example *templates/step/LICENSE* file. We don't accept steps into the StepLib without a license included in it!
* README file: technically it's not required

**The */templates/step* folder** contains everything what's required for a valid step repository,
with additional notes, you can find our full **template Step repository** on GitHub: [https://github.com/steplib/step-template](https://github.com/steplib/step-template).

**Detailed description of the Step repository** format can be found in *docs/step_format.md*.

**Recommendations, advanced tips and tricks for Step development** can be found in *docs/step_dev_notes.md*.


## Request/Propose a new Step

If you don't have the time to create your own Step you can propose one by creating a new issue with the *[proposal]* prefix:

* create a [new issue on GitHub](https://github.com/steplib/steplib/issues)
  * prefix the Title of the issue with: **[proposal]**
  * example: *[proposal] Heroku deploy*
* in the description try to explain how the step should work and provide as much useful information as you can (for example if you request a service integration step you could include a link to the official developer docs site)


## Contributing: How to submit your Step into the Open Step Library

To submit a Step to the [Open Step Library](http://www.steplib.com/)
you have to create a Pull Request in the StepLib's spec repository
and include your step's `step.yml` description file
in the **steps/** folder.

1. Create your Step repository as described above.
2. Fork this StepLib spec repository
3. Create a new folder inside the **steps/** folder (in your forked StepLib spec repository) if it's the first version of your Step. (Example path: `steps/my-step`). *Note: The name of the folder will be the ID of your Step.*
4. Create a folder inside your step's folder with the name of a version tag you added to your Step repository. (Example path: `steps/my-step/1.0.0`). **You have to actually use this tag in your repository**. When a user wants to use this version of your Step the StepLib system will try to clone your Step repository with the specified version tag!
5. Copy your step.yml into this version folder (Example path: `steps/my-step/1.0.0/step.yml`)
6. Create and send a Pull Request

*Before you submit your Step into a Step Library you should test it in a StepLib compatible system.
You can use a free [Bitrise](http://www.bitrise.io/) account to test your Step.*


# Development Roadmap

## What we want to achieve with StepLib?

* An open source CI/CD and build automation system, with easy install, but highly modular: can be used for any kind of pipeline based automation, like web hook transformation, file conversion or for CI/CD build pipeline automation
* Can be used with or without a web server, can be run from the terminal directly, used by online services or used on your own VPS


## V1 roadmap

Specification and existing step improvements:

* workflow format specification *(base specification available, we have to clean up a couple of things to consider this as finished)*
* ~~Step Icons - with URL to the icon or embedded in the step repository?~~
* ~~step variations (Xcode build - common code, pre-configured variations)~~
* question: extend the step.yml format with license information? So it can be presented on the StepLib and other collection websites?
* ~~read-only inputs, default input values~~
  * ~~step's responsibility to define which inputs are meant to be read-only or to map a default value~~
  * ~~these options can be used in step-variations / step-flavors to have a fully customizable step and a few flavors with some of the inputs predefined~~
  * ~~an example of this is the Xcode builder step: the base step is huge, it can do a lot of different things based on the inputs; different pre-defined flavors of it can be added so that when you use these you don't have to fill our all the inputs the base step can take~~
* Steplib: Data encryption policy/guideline
* Steplib: open(source) policy - (explain) why only public GitHub repositories are accepted as steps
* clean up existing/initial steps: do not depend on Bitrise's environment setup *(work in progress)*


## V2 roadmap

* A CLI (Command Line Interface) for running your workflow on your own machine
* minimal descriptions (StepLib website pages):
  * what is a step (intro and link to docs)
  * how to install the cli and run your first workflow - check vagrant!
* Provide an easier Step submission mechanism integrated into the CLI!


## V3 roadmap

Workflow editor to make it easy to create your workflow.
