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
      it "value of inclusion valid" do
        CustomField.create(title: "Test", status: "text").should be_valid
        CustomField.create(title: "Test", status: "text_area").should be_valid
        CustomField.create(title: "Test", status: "combobox").should be_valid
      end
      it "value of inclusion invalid" do
        CustomField.create(title: "Test", status: "label").should_not be_valid
        CustomField.create(title: "Test", status: "submit").should_not be_valid
        CustomField.create(title: "Test", status: "kdjafls").should_not be_valid
      end
    end

  end
end