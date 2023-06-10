require 'rails_helper'

RSpec.describe "areas/show", type: :view do
  before(:each) do
    assign(:area, Area.create!(
      area_type: "Area Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Area Type/)
  end
end
