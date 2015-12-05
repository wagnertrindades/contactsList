require 'rails_helper'

RSpec.describe CustomField, type: :model do
  describe "ContactList Model" do

    context "validate title" do
      it "presence valid" do
        CustomField.create(title: "Test", status: "text").should be_valid
      end
      it "presence invalid" do
        CustomField.create(title: "", status: "text").should_not be_valid
      end
    end

    context "validate status" do
      it "presence valid" do
        CustomField.create(title: "Test", status: "text").should be_valid
      end
      it "presence invalid" do
        CustomField.create(title: "Test", status: "").should_not be_valid
      end
    end

  end
end
