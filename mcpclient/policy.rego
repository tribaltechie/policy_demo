package envoy.authz

import input.attributes.request.http as http_request

default allow := true

allow := false if  {
  lower(input.parsed_body.params.name) == "getcustomerbytelno" 
  lower(input.parsed_body.params.arguments.tel_no) == "336-110-5988" 
}

result["allowed"] := allow

