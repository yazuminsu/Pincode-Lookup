# Mini Project

Create a Visualforce page which should be able to make REST callouts to India post endpoint to show the results of a pincode in a tabular format.

Whenever a callout is made to the endpoint, results from the callout should be saved in a custom object for future reference.

When user enters a pincode for which results are already available in the custom object, do not make a new callout but rather show the results from the custom object.

- Endpoint for integration: (https://api.postalpincode.in/pincode/{PINCODE})
- Sample pincodes: 110009, 110085, 110092, 201301
- Sample REST request: (https://api.postalpincode.in/pincode/110085)
