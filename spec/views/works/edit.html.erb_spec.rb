require 'rails_helper'

RSpec.describe "works/edit", type: :view do
  before(:each) do
    @work = assign(:work, Work.create!(
      amount_of_work: 1
    ))
  end

  it "renders the edit work form" do
    render

    assert_select "form[action=?][method=?]", work_path(@work), "post" do

      assert_select "input[name=?]", "work[amount_of_work]"
    end
  end
end
