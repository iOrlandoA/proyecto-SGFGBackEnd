require 'rails_helper'

RSpec.describe "bills/edit", type: :view do
  let(:bill) {
    Bill.create!(
      name: "MyString",
      price: 1,
      billtype: "",
      description: "MyString"
    )
  }

  before(:each) do
    assign(:bill, bill)
  end

  it "renders the edit bill form" do
    render

    assert_select "form[action=?][method=?]", bill_path(bill), "post" do

      assert_select "input[name=?]", "bill[name]"

      assert_select "input[name=?]", "bill[price]"

      assert_select "input[name=?]", "bill[billtype]"

      assert_select "input[name=?]", "bill[description]"
    end
  end
end
