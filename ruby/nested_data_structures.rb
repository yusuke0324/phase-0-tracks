tech_company = {
  google: {
    size: 7,
    product:["gmail","hangout", "google map", "Android"],
    location:{
      city: "Mountain View",
      address: "1600 Amphitheatre Parkway Mountain View, CA 94043"
    }
  },
  apple: {
    size: 5,
    product:["iphone", "MacBook""iTunes"],
    location:{
      city: "Sillicon Valley",
      address: "Apple Campus, Cupertino, California, U.S."
      }
    },
    ibm: {
      size: 10,
      product:["Watson","Notes", "BlueMix"],
      location:{
        city: "Armonk",
        address: "1 New Orchard Road
        Armonk, New York 10504-1722 United States"
      }
    }
  }

p tech_company[:ibm][:product][1]
p tech_company[:google][:location][:address]
p tech_company[:apple][:size]