class InvoicesController < ApplicationController
  def create
    amount = params[:amount]
    Invoice.create(amount: amount)
    pay_request_code = LightningClient.create_pay_request(amount)
    render json: {pay_req: pay_request_code}
  end
end
