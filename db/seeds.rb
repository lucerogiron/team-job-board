# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Job.create(
  company_id: 1, 
  title: "Cashier", 
  description: "Receives payments and issuing receipts, gift-wrapping packages and keeping track of all cash and credit transactions. To be successful in this role, you should have previous experience in a customer service position and good knowledge of how cash registers operate.", 
  url: "qwerty.example", 
  location: "Chesapeake, VA", 
  active: true, 
  salary_range: "$15 an hour")

Job.create(
  company_id: 1, 
  title: "Manager", 
  description: "You are responsible for the operation of the entire restaurant and building a strong team that consistently provides customers great food and a friendly experience. Key responsibilities include finding, hiring and developing employees, conducting new hire orientation and developing the training plan for each new hire.", 
  url: "qwerty1.example", 
  location: "Los Angeles, CA", 
  active: true, 
  salary_range: "$19 an hour")

Job.create(
  company_id: 2, 
  title: "Inventory", 
  description: "As an Inventory Analyst, you'll develop business strategies to drive availability and profitable sales. Make an impact by managing and allocating inventory to stores, negotiating and maintain business relationships with the largest vendors in the industry, and formulating in-depth inventory forecasts.", 
  url: "qwerty2.example", 
  location: "Miami, FL", 
  active: false, 
  salary_range: "$40,000 annually")

Job.create(
  company_id: 2, 
  title: "Janitor", 
  description: "Respond to hourly restroom cleanups, and keep stores trash-free. Be part of a fast, fun and friendly team. Resolve guest concerns quickly and accurately. Quick respond to clean-up requests. Use excellent guest service skills. Lift 40 pounds. Cross train and work in other areas of store as needed.", url: "qwerty3.example", 
  location: "New York, NY", 
  active: true, 
  salary_range: "$35,000 annually")

Job.create(
  company_id: 3, 
  title: "Head Chef", 
  description: "A Head Chef, is responsible for overseeing kitchen staff and ensuring the quality of food items. Their duties include hiring and training staff to cook their dishes, expediting orders to maintain a steady flow of dishes and creating dishes to add to the menu.", url: "qwerty4.example", 
  location: "Seattle, WA", 
  active: false, 
  salary_range: "$95,000 annually")

Job.create(
  company_id: 3, 
  title: "Server", 
  description: "A Server's responsibility is attending to diners before, during, and after their meals by helping them place, receive, and pay for their orders. They also ensure the timely delivery of food and beverages by checking on their tables periodically throughout the service time.", 
  url: "qwerty5.example", 
  location: "Seattle, WA", 
  active: true, 
  salary_range: "$50,000 annually")