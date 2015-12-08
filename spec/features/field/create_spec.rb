require 'spec_helper'

describe "field#create" do
  before { sign_in }
  let!(:contact) { ContactList.create(name: "Test", email: "test@test.com") }

  context "Create contact with field" do
    it "success" do
      user_id = User.find_by(name: "example").id
      custom_field = CustomField.create(title: "RG", status: "text", user_id: user_id)

      find(:xpath, "//a[@href='/contact_lists/new']").click
      fill_in "contact_list_name", with: "Test"
      fill_in "contact_list_email", with: "test@test.com"
      fill_in "contact_list_fields_attributes_0_content", with: "111.111.111"
      
      click_button "Criar contato"

      expect(page).to have_content("111.111.111")
    end
  end
end