require 'spec_helper'

describe "shortcuts/new" do
  before(:each) do
    assign(:shortcut, stub_model(Shortcut,
      :long_url => "MyString",
      :keyword => "MyString",
      :number_of_redirects => 1,
      :owner => "MyString"
    ).as_new_record)
  end

  it "renders new shortcut form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shortcuts_path, :method => "post" do
      assert_select "input#shortcut_long_url", :name => "shortcut[long_url]"
      assert_select "input#shortcut_keyword", :name => "shortcut[keyword]"
      assert_select "input#shortcut_number_of_redirects", :name => "shortcut[number_of_redirects]"
      assert_select "input#shortcut_owner", :name => "shortcut[owner]"
    end
  end
end
