class DolistsController < ApplicationController
  before_action :set_dolist, only: [:show, :edit, :update, :destroy]

  # GET /dolists
  # GET /dolists.json
  def index
    @dolists = Dolist.all
  end

  # GET /dolists/1
  # GET /dolists/1.json
  def show
  end

  # GET /dolists/new
  def new
    @dolist = Dolist.new
  end

  # GET /dolists/1/edit
  def edit
  end

  # POST /dolists
  # POST /dolists.json
  def create
    @dolist = Dolist.new(dolist_params)

    respond_to do |format|
      if @dolist.save
        format.html { redirect_to @dolist, notice: 'Dolist was successfully created.' }
        format.json { render :show, status: :created, location: @dolist }
      else
        format.html { render :new }
        format.json { render json: @dolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dolists/1
  # PATCH/PUT /dolists/1.json
  def update
    respond_to do |format|
      if @dolist.update(dolist_params)
        format.html { redirect_to @dolist, notice: 'Dolist was successfully updated.' }
        format.json { render :show, status: :ok, location: @dolist }
      else
        format.html { render :edit }
        format.json { render json: @dolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dolists/1
  # DELETE /dolists/1.json
  def destroy
    @dolist.destroy
    respond_to do |format|
      format.html { redirect_to dolists_url, notice: 'Dolist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dolist
      @dolist = Dolist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dolist_params
      params.require(:dolist).permit(:date, :do)
    end
end
