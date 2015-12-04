require 'rails_helper'

RSpec.describe ContactListsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ContactList. As you add validations to ContactList, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContactListsController. Be sure to keep this updated too.
  let(:valid_session) { { } }

  describe "GET #index" do
    it "assigns all contact_lists as @contact_lists" do
      contact_list = ContactList.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:contact_lists)).to eq([contact_list])
    end
  end

  describe "GET #show" do
    it "assigns the requested contact_list as @contact_list" do
      contact_list = ContactList.create! valid_attributes
      get :show, {:id => contact_list.to_param}, valid_session
      expect(assigns(:contact_list)).to eq(contact_list)
    end
  end

  # describe "GET #new" do
  #   it "assigns a new contact_list as @contact_list" do
  #     get :new, {}, valid_session
  #     expect(assigns(:contact_list)).to be_a_new(ContactList)
  #   end
  # end

  describe "GET #edit" do
    it "assigns the requested contact_list as @contact_list" do
      contact_list = ContactList.create! valid_attributes
      get :edit, {:id => contact_list.to_param}, valid_session
      expect(assigns(:contact_list)).to eq(contact_list)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ContactList" do
        expect {
          post :create, {:contact_list => valid_attributes}, valid_session
        }.to change(ContactList, :count).by(1)
      end

      it "assigns a newly created contact_list as @contact_list" do
        post :create, {:contact_list => valid_attributes}, valid_session
        expect(assigns(:contact_list)).to be_a(ContactList)
        expect(assigns(:contact_list)).to be_persisted
      end

      it "redirects to the created contact_list" do
        post :create, {:contact_list => valid_attributes}, valid_session
        expect(response).to redirect_to(ContactList.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved contact_list as @contact_list" do
        post :create, {:contact_list => invalid_attributes}, valid_session
        expect(assigns(:contact_list)).to be_a_new(ContactList)
      end

      it "re-renders the 'new' template" do
        post :create, {:contact_list => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested contact_list" do
        contact_list = ContactList.create! valid_attributes
        put :update, {:id => contact_list.to_param, :contact_list => new_attributes}, valid_session
        contact_list.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested contact_list as @contact_list" do
        contact_list = ContactList.create! valid_attributes
        put :update, {:id => contact_list.to_param, :contact_list => valid_attributes}, valid_session
        expect(assigns(:contact_list)).to eq(contact_list)
      end

      it "redirects to the contact_list" do
        contact_list = ContactList.create! valid_attributes
        put :update, {:id => contact_list.to_param, :contact_list => valid_attributes}, valid_session
        expect(response).to redirect_to(contact_list)
      end
    end

    context "with invalid params" do
      it "assigns the contact_list as @contact_list" do
        contact_list = ContactList.create! valid_attributes
        put :update, {:id => contact_list.to_param, :contact_list => invalid_attributes}, valid_session
        expect(assigns(:contact_list)).to eq(contact_list)
      end

      it "re-renders the 'edit' template" do
        contact_list = ContactList.create! valid_attributes
        put :update, {:id => contact_list.to_param, :contact_list => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested contact_list" do
      contact_list = ContactList.create! valid_attributes
      expect {
        delete :destroy, {:id => contact_list.to_param}, valid_session
      }.to change(ContactList, :count).by(-1)
    end

    it "redirects to the contact_lists list" do
      contact_list = ContactList.create! valid_attributes
      delete :destroy, {:id => contact_list.to_param}, valid_session
      expect(response).to redirect_to(contact_lists_url)
    end
  end

end
