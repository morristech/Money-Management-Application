class PaysController < ApplicationController
  # GET /pays
  # GET /pays.json
  def index
    @pays = Pay.all
    @nowuser = User.find(session[:user_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pays }
    end
  end

  # GET /pays/1
  # GET /pays/1.json
  def show
    @pay = Pay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pay }
    end
  end

  # GET /pays/new
  # GET /pays/new.json
  def new
    @pay = Pay.new
    @user = User.find(session[:user_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pay }
    end
  end

  # GET /pays/1/edit
  def edit
    @pay = Pay.find(params[:id])
    @user = User.find(session[:user_id])
  end

  # POST /pays
  # POST /pays.json
  def create
    @pay = Pay.new(params[:pay])

#--- save imege file to /public/image/. and assign filename to Pay table ---#
    if params[:image]
      fi = params[:image]
      imagename = fi.original_filename
      File.open("public/image/#{imagename}", 'wb') { |im| im.write(fi.read) }
      @pay.image_url = imagename
    end

#--- save receipt image to /public/receipt/. and assign filename to Pay table---#
    if params[:receipt]
      fr = params[:receipt]
      receiptname = fr.original_filename
      File.open("public/receipt/#{receiptname}", 'wb') { |rm| rm.write(fr.read) }
      @pay.receipt_url = receiptname
    end

    respond_to do |format|
      if @pay.save
        format.html { redirect_to @pay, notice: 'Pay was successfully created.' }
        format.json { render json: @pay, status: :created, location: @pay }
      else
        format.html { render action: "new" }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pays/1
  # PUT /pays/1.json
  def update
    @pay = Pay.find(params[:id])

    respond_to do |format|
      if @pay.update_attributes(params[:pay])
        format.html { redirect_to @pay, notice: 'Pay was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pays/1
  # DELETE /pays/1.json
  def destroy
    @pay = Pay.find(params[:id])
    @pay.destroy

    respond_to do |format|
      format.html { redirect_to pays_url }
      format.json { head :ok }
    end
  end
end
