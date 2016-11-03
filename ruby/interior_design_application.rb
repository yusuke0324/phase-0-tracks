application_data ={
  name: "Yusuke",
  address: "Tokyo",
  email: "yusuke@gmail.com",
  phone: "090-5340-3530"
}

application_data[:email] = "take.yusuke@yahoo.com"
application_data[:hired] = true
p application_data
p application_data[:name] + application_data[:address]