require 'spec_helper'

describe "custom_field#destroy" do
  before { sign_in }

  context "Destroy Custom Field" do
    it "success" do
      user_id = User.find_by(name: "example").id
      custom_field = CustomField.create(title: "RG", status: "text", user_id: user_id)

      click_link "Configurar campos personalizados"
      
      within ".custom-field" do
        click_link "Apagar"
      end

      expect(page).to have_content("Campo personalizado apagado com sucesso.")
      expect(page).to_not have_content(".custom_field")
      expect(CustomField.count).to eq(0)
    end
  end

end