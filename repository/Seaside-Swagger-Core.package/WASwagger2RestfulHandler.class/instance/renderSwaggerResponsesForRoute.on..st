rendering
renderSwaggerResponsesForRoute: aRoute on: swagger
	"A container for the expected responses of an operation. The container maps a HTTP response code to the expected response. 
	It is not expected from the documentation to necessarily cover all possible HTTP response codes, since they may not be known in advance. 
	However, it is expected from the documentation to cover a successful operation response and any known errors.

	The default can be used a default response object for all HTTP codes that are not covered individually by the specification.

	The Responses Object MUST contain at least one response code, and it SHOULD be the response for a successful operation call."
	
	aRoute responses do: [ :response |
		swagger
			key: response key greaseString
			value: [
				self renderSwaggerResponse: response value on: swagger ] ]