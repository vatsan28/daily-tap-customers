require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone_number => "Phone Number",
        :email => "Email",
        :password_digest => "Password Digest"
      ),
      Customer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone_number => "Phone Number",
        :email => "Email",
        :password_digest => "Password Digest"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
  end
end
