class WhatsController < ApplicationController
  before_action :set_what, only: [:show, :edit, :update, :destroy]

  # GET /whats
  # GET /whats.json
  def index
    @whats = What.all
  end

  # GET /whats/1
  # GET /whats/1.json
  def show
  end

  # GET /whats/new
  def new
    @what = What.new
  end

  # GET /whats/1/edit
  def edit
  end
  @comments = @idea.comments.all
  @comment = @idea.comments.build
  # POST /whats
  # POST /whats.json
  def create
    @what = What.new(what_params)

    respond_to do |format|
      if @what.save
        format.html { redirect_to @what, notice: 'What was successfully created.' }
        format.json { render :show, status: :created, location: @what }
      else
        format.html { render :new }
        format.json { render json: @what.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whats/1
  # PATCH/PUT /whats/1.json
  def update
    respond_to do |format|
      if @what.update(what_params)
        format.html { redirect_to @what, notice: 'What was successfully updated.' }
        format.json { render :show, status: :ok, location: @what }
      else
        format.html { render :edit }
        format.json { render json: @what.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whats/1
  # DELETE /whats/1.json
  def destroy
    @what.destroy
    respond_to do |format|
      format.html { redirect_to whats_url, notice: 'What was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_what
      @what = What.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def what_params
      params.require(:what).permit(:user_name, :body, :idea_id)
    end
end
