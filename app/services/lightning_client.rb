class LightningClient
  def self.create_pay_request(amount)
    `lncli addinvoice --amt #{amount}`
  end
end
