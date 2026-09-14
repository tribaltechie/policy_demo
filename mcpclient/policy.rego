package envoy.authz

import input.attributes.request.http as http_request

allow := true

allow := false if  {
  lower(input.parsed_body.params.name) == "getcustomerbytelno" 
  lower(input.parsed_body.params.arguments.tel_no) == "336-110-5988" 
}

status_code := 200 if {
    allow
} else := 503

body := "SmartVerify: Request blocked by policy" if not allow

result["allowed"] := allow
result["body"] := body
result["http_status"] := status_code
