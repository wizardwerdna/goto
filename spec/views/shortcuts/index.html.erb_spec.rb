require 'spec_helper'

describe "shortcuts/index" do
  before(:each) do
    assign(:shortcuts, [
      stub_model(Shortcut,
        :long_url => "Long Url",
        :keyword => "Keyword",
        :number_of_redirects => 1,
        :owner => "Owner"
      ),
      stub_model(Shortcut,
        :long_url => "Long Url",
        :keyword => "Keyword",
        :number_of_redirects => 1,
        :owner => "Owner"
      )
    ])
  end

  it "renders a list of shortcuts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Long Url".to_s, :count => 2
    assert_select "tr>td", :text => "Keyword".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
  end
end
