require 'spec_helper'

describe "pictures/show" do
  before(:each) do
    @picture = assign(:picture, stub_model(Picture,
      :filepicker_url => "Filepicker Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Filepicker Url/)
  end
end
