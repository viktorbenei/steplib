
# Recommendations, advanced tips and tricks for Step development

* inputs of your step will be passed as Environment Variables by the StepLib systems, usually based on your step.yml descriptor file.
* the *is_expand* flag of an input (in step.yml) marks whether the input's content should be expanded based on the Environment or not. If it's *true* then environment variables will be replaced in the content (for example *$HOME* will be replaced with the value of the HOME environment variable). If it's *false* then no expansion will be performed and the "raw" original content will be available in the Environment Variable the input is *mapped_to*.


## Outputs

If your step have outputs you'll have to make it sure that the listed outputs are actually
available for other steps.

You can append your output to the ~/.bashrc file which is recommended to be autoloaded
before any step would run.

*NOTE:* the way steps share their outputs is [marked for revision](https://github.com/steplib/steplib/issues/28). Feel free to suggest a better way if you know one.


## Formatted output

StepLib programs and services are expected to accept a formatted output your step can generate.

At the moment the special *$BITRISE_STEP_FORMATTED_OUTPUT_FILE_PATH* environment variable
specifies the path where you can generate your formatted output file,
but this will be replaced with another mechanism of will be simply renamed
as noted [in this issue](https://github.com/steplib/steplib/issues/29).

For the sake of simplicity the Formatted Output file is expected to be
in **Markdown** format, which is easy to generate in every script language
and can be easily converted to HTML by programs and services.
