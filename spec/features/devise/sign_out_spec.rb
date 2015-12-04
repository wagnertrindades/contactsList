require 'spec_helper'

describe 'sessions#destroy' do

    context 'Log out in account' do
        it 'success' do
            sign_in

            click_link "Sair"

            expect(page).to have_content("Saiu com sucesso")
        end
    end
end