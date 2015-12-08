require 'spec_helper'

describe "custom_field#edit" do
  before { sign_in }

  context "Edit Custom Field" do
    it "success" do
      user_id = User.find_by(name: "example").id
      custom_field = CustomField.create(title: "RG", status: "text", user_id: user_id) 

      click_link "Configurar campos personalizados"
      
      within ".custom-card" do
        click_link "Editar"
      end

      fill_in "custom_field_title", with: "CPF"
      click_button "Atualizar"

      expect(page).to have_content("Campo personalizado atualizado com sucesso.")
      
      within ".custom-card .custom-field-title" do
        expect(page).to have_content("CPF")
      end
    end
  end

end