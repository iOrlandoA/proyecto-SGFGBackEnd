require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      bill_ref: 1,
      amount: 1.5
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input[name=?]", "payment[bill_ref]"

      assert_select "input[name=?]", "payment[amount]"
    end
  end
end
