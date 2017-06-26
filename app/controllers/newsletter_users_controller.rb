class NewsletterUsersController < ApplicationController
  before_action :set_newsletter_user, only: [:show, :edit, :update, :destroy]

  # GET /newsletter_users
  # GET /newsletter_users.json
  def index
    @newsletter_users = NewsletterUser.all
  end

  # GET /newsletter_users/1
  # GET /newsletter_users/1.json
  def show
  end

  # GET /newsletter_users/new
  def new
    @newsletter_user = NewsletterUser.new
  end

  # GET /newsletter_users/1/edit
  def edit
  end

  # POST /newsletter_users
  # POST /newsletter_users.json
  def create
    @newsletter_user = NewsletterUser.new(newsletter_user_params)

    respond_to do |format|
      if @newsletter_user.save
        format.html { redirect_to front_path, notice: ' Your Email was successfully registered ' }
        format.json { render :show, status: :created, location: front_path }
      else
        format.html { redirect_to front_path, notice: 'Your Email was not successfully registered' }
        format.json { render json: @newsletter_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsletter_users/1
  # PATCH/PUT /newsletter_users/1.json
  def update
    respond_to do |format|
      if @newsletter_user.update(newsletter_user_params)
        format.html { redirect_to @newsletter_user, notice: 'Newsletter user was successfully updated.' }
        format.json { render :show, status: :ok, location: @newsletter_user }
      else
        format.html { render :edit }
        format.json { render json: @newsletter_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletter_users/1
  # DELETE /newsletter_users/1.json
  def destroy
    @newsletter_user.destroy
    respond_to do |format|
      format.html { redirect_to newsletter_users_url, notice: 'Newsletter user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter_user
      @newsletter_user = NewsletterUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletter_user_params
      params.require(:newsletter_user).permit(:email)
    end
end
