require 'spec_helper'

describe "updates/index" do
  before(:each) do
    assign(:updates, [
      stub_model(Update,
        :desc => "",
        :desc => "MyText"
      ),
      stub_model(Update,
        :desc => "",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of updates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
