1. What are some common HTTP status codes?
  * 200 OK
  * 400 Bad Request
  * 401 Unauthorized
  * 404 Not Found
  * 500 Internal Server Error

2. What is the difference between a GET request and a POST request? When might each be used?
  GET is a method to retrieve resources, while POST is to submit data to be processed to a specified resources.
  POST is used when the data to be passed via the method is huge or update something of the resources.

3. Wha t is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  Cookie is a protocol to be used between web servers and web browsers and to manage a state (stateful protocol). Because HTTP is a stateless protocol, which cannot save the state of web browser, HTTP cannot respond to the web browser considering the web browser's state like logged in or what stuff in their shopping cart. However, web server often need to respond depends on the state these day. Cookie save the state of the web browser by been included in a http request.
