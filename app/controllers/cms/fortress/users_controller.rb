class Cms::Fortress::UsersController < Admin::Cms::BaseController
  before_filter do
    authorize! :manage, Cms::Fortress::User
  end

  # GET /cms/fortress/users
  # GET /cms/fortress/users.json
  def index
    @cms_fortress_users = Cms::Fortress::User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cms_fortress_users }
    end
  end

  # GET /cms/fortress/users/1
  # GET /cms/fortress/users/1.json
  def show
    @cms_fortress_user = Cms::Fortress::User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cms_fortress_user }
    end
  end

  # GET /cms/fortress/users/new
  # GET /cms/fortress/users/new.json
  def new
    @cms_fortress_user = Cms::Fortress::User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cms_fortress_user }
    end
  end

  # GET /cms/fortress/users/1/edit
  def edit
    @cms_fortress_user = Cms::Fortress::User.find(params[:id])
  end

  # POST /cms/fortress/users
  # POST /cms/fortress/users.json
  def create
    @cms_fortress_user = Cms::Fortress::User.new(user_params)

    respond_to do |format|
      if @cms_fortress_user.save
        format.html { redirect_to cms_fortress_users_path, notice: 'User was successfully created.' }
        format.json { render json: @cms_fortress_user, status: :created, location: @cms_fortress_user }
      else
        format.html { render action: "new" }
        format.json { render json: @cms_fortress_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cms/fortress/users/1
  # PUT /cms/fortress/users/1.json
  def update
    @cms_fortress_user = Cms::Fortress::User.find(params[:id])

    user = user_params
    if user[:password].blank?
      user.delete(:password)
      user.delete(:password_confirmation) if user[:password_confirmation].blank?
    end

    respond_to do |format|
      if @cms_fortress_user.update_attributes(user)
        format.html { redirect_to cms_fortress_users_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cms_fortress_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/fortress/users/1
  # DELETE /cms/fortress/users/1.json
  def destroy
    @cms_fortress_user = Cms::Fortress::User.find(params[:id])
    @cms_fortress_user.destroy

    respond_to do |format|
      format.html { redirect_to cms_fortress_users_url }
      format.json { head :no_content }
    end
  end

  private

  def user_params
    params.require(:cms_fortress_user).permit(:last_name, :first_name, :email, :role_id, :password, :password_confirmation)
  end
end
