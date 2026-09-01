package envoy.authz

import input.attributes.request.http as http_request

allow := true

allow := false if  {
  lower(input.parsed_body.params.name) == "getcustomerbytelno" 
  lower(input.parsed_body.params.arguments.tel_no) == "871-871-5320" 
}

result["allowed"] := allow

