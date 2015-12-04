require 'spec_helper'

describe "text_fields#create" do
  before { sign_in }

  context "Create text_field" do
    it "success" do
      click_link "Configurar campos personalizados"
      click_link "Adicionar campo de texto"
      fill_in "Title", with: "RG"
      click_button "Criar campo personalizado"
      expect(page).to have_content("Campo de texto adicionado com sucesso.")
      within ".contact-text-field .title" do
        expect(page).to have_content("RG")
      end
    end
  end

end