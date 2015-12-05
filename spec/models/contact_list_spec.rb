require 'rails_helper'

RSpec.describe ContactList, type: :model do
  describe "ContactList Model" do 

    context "validate email" do
      it "presence valid" do
        ContactList.create(name: "Test", email: "test@test.com").should be_valid
      end
      it "presence invalid" do
        ContactList.create(name: "Test", email: "").should_not be_valid
      end
    end
 
  end
end
