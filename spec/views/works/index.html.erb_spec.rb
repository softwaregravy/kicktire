require 'rails_helper'

RSpec.describe "works/index", type: :view do
  before(:each) do
    assign(:works, [
      Work.create!(
        amount_of_work: 2
      ),
      Work.create!(
        amount_of_work: 2
      )
    ])
  end

  it "renders a list of works" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
