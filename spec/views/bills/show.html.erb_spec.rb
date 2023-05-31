require 'rails_helper'

RSpec.describe "bills/show", type: :view do
  before(:each) do
    assign(:bill, Bill.create!(
      name: "Name",
      price: 2,
      billtype: "",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
  end
end
