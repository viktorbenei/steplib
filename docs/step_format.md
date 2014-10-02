
# Step Format

A Step have to be a Git repository hosted on GitHub as a public repository.

It have to contain:

* a step.sh file : this is the entry point of you Step
* a step.yml file : contains the description of the Step

Recommended:

* a LICENSE file (we prefer the MIT or the WTFPL license)
* a README.md file (readme file in Markdown format)

## Step.yml and default values

* is admin required
* is_expand

### Inputs

* title : [required] Title of the input (presentable to the user)
* mapped_to : [required] The environment variable which will contain the value
  the user provides. Don't include the dollar sign, just the environment
  variable's name.
* is_expand : [default: true] Whether to do an environment expansion
  on the value of the input before storing it in the environment.
  As an example you might want to include other environment variables in
  an email summarizing a build. If is_expand is true (default) and
  you (or the user) include let's say a `${XCODE_BUILDER_STATUS}` environment
  reference then the string ${XCODE_BUILDER_STATUS} will be replaced
  with the environment value of XCODE_BUILDER_STATUS.
  If is_expand is false then the string `${XCODE_BUILDER_STATUS}` will
  be included instead of the related environment value it references.
