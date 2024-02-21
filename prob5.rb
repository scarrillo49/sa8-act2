module Payments
    class Invoice
    end
  
    class Receipt
    end
  end
  
  invoice = Payments::Invoice.new
  receipt = Payments::Receipt.new

  include Payments
  invoice.send_invoice 
  