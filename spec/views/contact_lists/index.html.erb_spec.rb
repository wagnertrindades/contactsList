require 'rails_helper'

RSpec.describe "contact_lists/index", type: :view do
  before(:each) do
    assign(:contact_lists, [
      ContactList.create!(
        :name => "Name",
        :email => "Email"
      ),
      ContactList.create!(
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of contact_lists" do
    render
    assert_select "li>span", :text => "Name".to_s, :count => 2
    assert_select "li>span", :text => "Email".to_s, :count => 2
  end
end
