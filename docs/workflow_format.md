# Workflow format [**draft**]

## Design goals

* should be as simple as possible
* step data should be copy-paste -able from the StepLib collection as much as possible
* have to allow *service specific* meta data to be embedded
  * but generally it should be limited as much as possible for cross platform/service support
  * the service specific information should be handled separately by the service and the least amount should be included in the workflow
  * additionally these service specific meta information should **not** be included in exported Workflows, for example in the ones you share with another service or with another user


## 0.9.x

{
  "format_version": "0.9.0", // Workflow file format version

  // meta: optional, can store platform specific information, it's generally ignored
  "meta": {
    "comment": "'meta' is allowed at every level and can contain service specific information",
    "project_id": 123 // just an example, can be anything
  },

  "workflow": {
    "meta": {
      "comment": "'meta' is allowed here too. You can store the workflow's ID in your service here for example.",
      "workflow_id": 123
    },

    "title": "Title of the Workflow - it's meant to be presented on GUI, editable by the user, just for the sake of workflow organization (if the user has more than one workflow).",

    // Workflow level environments, accessible in every Step
    "environments": [
      {
        "title": "Workflow level Environment, will be available for every Step in the Workflow.",
        "mapped_to": "ENV_KEY",
        "is_expand": true,
        "value": "The value of the environment variable"
      },
    ],

    "steps": [
      {
        // service specific
        "meta": {
          "collection_id": "OPENSTEPLIB",
          "step_full_id": "OPENSTEPLIB-git-clone",
        },

        // utility
        "title": "Title of the Step, meant to be accessible and editable for users, for step organization inside the workflow.",

        // workflow specific
        "is_always_run": false,
        "position_in_workflow": 0,
        "id": "git-clone", // not part of a "step version" in the StepLib format, have to be injected

        // step-lib specific
        "version_tag": "1.4.0",
        "name": "Git Clone Repository",
        "description": "Clones a repository based on the provided inputs.\n\n**NOTE**: it will remove the specified (local) Destination Directory before cloning!\n\nIf a git commit is provided it will ignore the tag and branch parameters.\nIf no git commit but a tag is provided then it will ignore the branch parameter.\n\nAuth: if SSH private key parameter provided the other auth parameters will be ignored.\n\nUse either the *(raw) SSH* or the *Base64 encoded SSH* key input to specify\nthe SSH key. If both specified the *(raw) SSH* key input will be used.\n",
        "website": "https:\/\/github.com\/bitrise-io\/steps-git-clone",
        "host_os_tags": [
          "osx-10.9"
        ],
        "type_tags": [
          "git",
          "vcs"
        ],
        "requires_admin_user": false,
        "source": {
          "git": "https:\/\/github.com\/bitrise-io\/steps-git-clone.git"
        },
        "inputs": [
          {
            "title": "Step specific environment, only available for this specific Step.",
            "mapped_to": "ENV_KEY",
            "is_expand": true,
            "value": "The value of the environment variable"
          }
        ],
        "outputs": [
          {
            "title": "Cloned git commit's commit hash\n",
            "mapped_to": "GIT_CLONE_COMMIT_HASH"
          }
        ]
      }
    ]
  }
}


## 1.0

* Defined interface for Artifacts to collect
