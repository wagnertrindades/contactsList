class ContactListsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_contact_list, only: [:show, :edit, :update, :destroy]

  # GET /contact_lists
  # GET /contact_lists.json
  def index
    @contact_lists = current_user.contact_list.all
    @custom_fields = current_user.custom_field.all
  end

  # GET /contact_lists/1
  # GET /contact_lists/1.json
  def show
  end

  # GET /contact_lists/new
  def new
    @contact_list = current_user.contact_list.new
  end

  # GET /contact_lists/1/edit
  def edit
  end

  # POST /contact_lists
  # POST /contact_lists.json
  def create
    @contact_list = current_user.contact_list.new(contact_list_params)

    respond_to do |format|
      if @contact_list.save
        format.html { redirect_to @contact_list, notice: 'Contato adicionado com sucesso.' }
        format.json { render :show, status: :created, location: @contact_list }
      else
        format.html { render :new }
        format.json { render json: @contact_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_lists/1
  # PATCH/PUT /contact_lists/1.json
  def update
    respond_to do |format|
      if @contact_list.update(contact_list_params)
        format.html { redirect_to @contact_list, notice: 'Contact list was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_list }
      else
        format.html { render :edit }
        format.json { render json: @contact_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_lists/1
  # DELETE /contact_lists/1.json
  def destroy
    @contact_list.destroy
    respond_to do |format|
      format.html { redirect_to contact_lists_url, notice: 'Contact list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_list
      @contact_list = current_user.contact_list.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_list_params
      params.require(:contact_list).permit(:name, :email, :user_id)
    end
end
