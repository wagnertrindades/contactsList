class FieldController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contact_list

  def create
    @field = @contact_list.fields.create(field_params)
    redirect_to contact_lists_path
  end


  private
    def set_contact_list
      @contact_list = ContactList.find(params[:contact_list_id])
    end

    def field_params
      params[:field].permit(:content, :area_content, :combobox)
    end
end