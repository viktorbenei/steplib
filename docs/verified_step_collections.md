# Questions / revision ideas

* Instead of another folder just use the same steps folder and keep only the ones you verify?


# Create a Verified Step Collections

For Step Host services it can be a crucial thing to have a verified
set of Steps.

We advise you to do it in the following way:

* support the full StepLib
  * make it available for admins / testers to test and verify new steps before
    inclusion in the verified collection
  * or make it available for everyone (good for supporting community developed steps)
    but maintain and highlight a verified steps list (separated from not verified steps list)
* fork all the Steps you want to include in your verified collection
  * this way you can contribute to the original version of the Step too
* fork this repository and copy the verified step versions into a new folder, *verified_steps*
  * maintain the same structure of the *steps* folder
* this way you can use the same JSON generator for both the Open Step Lib collection
  and for your own verified collection
  * use this JSON to update your service's Step Library database
