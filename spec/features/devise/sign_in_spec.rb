require 'spec_helper'

describe 'sessions#new' do

    context 'Enter in account' do
        it 'success' do
            sign_in

            expect(page).to have_content("Lista de contatos")
        end

        it 'error' do
            visit "/"
            fill_in "user_email", with: "errado@errado.com"
            fill_in "user_password", with: "errado"
            click_button "Entrar"

            expect(page).to_not have_content("Lista de contatos")
        end
    end
end