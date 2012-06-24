require 'spec_helper'

describe "shortcuts/show" do
  before(:each) do
    @shortcut = assign(:shortcut, stub_model(Shortcut,
      :long_url => "Long Url",
      :keyword => "Keyword",
      :number_of_redirects => 1,
      :owner => "Owner"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Long Url/)
    rendered.should match(/Keyword/)
    rendered.should match(/1/)
    rendered.should match(/Owner/)
  end
end
