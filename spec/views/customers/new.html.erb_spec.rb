require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :phone_number => "MyString",
      :email => "MyString",
      :password_digest => "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input#customer_first_name[name=?]", "customer[first_name]"

      assert_select "input#customer_last_name[name=?]", "customer[last_name]"

      assert_select "input#customer_phone_number[name=?]", "customer[phone_number]"

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_password_digest[name=?]", "customer[password_digest]"
    end
  end
end
