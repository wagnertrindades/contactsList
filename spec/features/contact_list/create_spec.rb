require 'spec_helper'

describe "contact_lists#create" do
  before { sign_in }

  context "Create contact" do
    it "success" do
      click_link "Novo contato"
      fill_in "Name", with: "Test"
      fill_in "Email", with: "test@test.com"
      click_button "Criar contato"
      expect(page).to have_content("Contato adicionado com sucesso.")
      within ".contact-name" do
        expect(page).to have_content("Test")
      end
    end
  end
  # it "is successfully with valid content" do
  #   visit_todo_list(todo_list)
  #   click_link "New Todo Item"
  #   fill_in "Content", with: "Milk"
  #   click_button "Save"
  #   expect(page).to have_content("Added todo list item.")
  #   within "tbody.todo-items" do
  #     expect(page).to have_content("Milk")
  #   end
  # end

  # it "displays an error with no content" do
  #   visit_todo_list(todo_list)
  #   click_link "New Todo Item"
  #   fill_in "Content", with: ""
  #   click_button "Save"
  #   within("div.flash") do
  #     expect(page).to have_content("Theres was a problem adding that todo list item.")
  #   end
  #   expect(page).to have_content("Content can't be blank")
  # end

  # it "displays an error with content less then 2 characters long" do
  #   visit_todo_list(todo_list)
  #   click_link "New Todo Item"
  #   fill_in "Content", with: "1"
  #   click_button "Save"
  #   within("div.flash") do
  #     expect(page).to have_content("Theres was a problem adding that todo list item.")
  #   end
  #   expect(page).to have_content("Content is too short")
  # end
end