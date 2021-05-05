require 'rails_helper'

RSpec.describe "cohorts/index", type: :view do
  before(:each) do
    assign(:cohorts, [
      Cohort.create!(
        name: "Name",
        description: "MyText"
      ),
      Cohort.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of cohorts" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
