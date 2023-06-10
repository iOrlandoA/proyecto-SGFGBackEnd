require 'rails_helper'

RSpec.describe "areas/index", type: :view do
  before(:each) do
    assign(:areas, [
      Area.create!(
        area_type: "Area Type"
      ),
      Area.create!(
        area_type: "Area Type"
      )
    ])
  end

  it "renders a list of areas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Area Type".to_s), count: 2
  end
end
