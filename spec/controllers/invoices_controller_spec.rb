require 'rails_helper'

RSpec.describe InvoicesController, type: :request do
  it 'creates invoice for specified amount' do
    request_code = 'xxx-123-yyy'
    allow(LightningClient).to receive(:create_pay_request).and_return(request_code)
    expect { post '/invoices', params: {amount: 1000} }.to change { Invoice.count }.by(1)
    json_response = JSON.parse(response.body).symbolize_keys
    expect(json_response).to include(pay_req: request_code)
  end
end
