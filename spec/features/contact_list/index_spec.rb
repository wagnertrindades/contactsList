require 'spec_helper'

describe "contact_lists#index" do
  before { sign_in(name: "example") }

  context "show contacts" do
    it "contacts is populated" do
      user_id = User.find_by(name: "example").id
      contact = ContactList.create(name: "Test", email: "test@test.com", user_id: user_id)
      
      visit "/contact_lists"
      
      within ".contact-name" do
        expect(page).to have_content(contact.name)
      end
    end
    it "contacts is empty" do
      visit "/contact_lists"
      expect(page.all(".contact").size).to eq(0)
    end

  end
  
  # it "displays the title of the todo list" do
  #   visit_todo_list(todo_list)
  #   within "h1.title" do
  #     expect(page).to have_content(todo_list.title)
  #   end
  # end

  # it "display no items when a todo list is empty" do
  #   visit_todo_list(todo_list)
  #   expect(page.all("tbody.body-items tr").size).to eq(0) 
  # end

  # it "displays item content when a todo list has items" do
  #   todo_list.todo_items.create(content: "Milk")
  #   todo_list.todo_items.create(content: "Eggs")
    
  #   visit_todo_list(todo_list)
    
  #   expect(page.all("tbody.todo-items .item-content").size).to eq(2)
    
  #   within "tbody.todo-items" do
  #     expect(page).to have_content("Milk")
  #     expect(page).to have_content("Eggs")
  #   end
  # end
end