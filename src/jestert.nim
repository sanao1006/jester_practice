import jester
import json
import ./front/main
routes:
  get "/":
    resp(render())
  post "/confirm":
    var 
        a = request.formData()
        b = a["unchi"]
    resp $b 
    
runForever()