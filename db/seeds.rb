LineItem.destroy_all
Order.destroy_all

fred = Order.create(customer: "Fred", order_date: Time.now - 3.hours)
sally = Order.create(customer: "Sally", order_date: Time.now - 2.hours)
tim = Order.create(customer: "Tim", order_date: Time.now - 1.hours)

fred.line_items.create(product: "Sponges", quantity: 20)
fred.line_items.create(product: "Solvent", quantity: 3)
sally.line_items.create(product: "Brushes", quantity: 4)
tim.line_items.create(product: "Microscope", quantity: 1)
tim.line_items.create(product: "Slides", quantity: 10)
