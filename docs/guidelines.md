
# StepLib format: Keep it simple, keep it minimal

One of the major guideline of StepLib's format / structure is to keep it simple and keep it minimal as much as possible.


# Source Control

Only **Git** is accepted


# Source Control Provider

Only **GitHub** accepted


# Public or Private repository?

Only **public** repositories accepted


# Version folder name

Have to match the *source/tag* attribute in the *step.yml* stored in the folder.

Example:

step.yml with:
    source:
        tag: 1.0.0

Have to be stored at: *steps/the-steps-name/1.0.0/step.yml*

# Step.yml have to match

The step.yml have to match the one stored in the repository for the given git tag.
