require 'spec_helper'

describe "field#create" do
  before { sign_in }
  let!(:contact) { ContactList.create(name: "Test", email: "test@test.com") }

  context "Create contact with field" do
    it "success" do
      user_id = User.find_by(name: "example").id
      custom_field = CustomField.create(title: "RG", status: "text", user_id: user_id)

      click_link "Novo contato"
      fill_in "Name", with: "Test"
      fill_in "Email", with: "test@test.com"
      click_button "Criar contato"
      expect(page).to have_content("Contato adicionado com sucesso.")
      within ".contact-name" do
        expect(page).to have_content("Test")
      end

      fill_in "RG", with: "111.111.111"
      click_button "Atualizar"
      expect(page).to have_content("111.111.111")
    end
  end
end