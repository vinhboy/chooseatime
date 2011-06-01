class EventtimesController < ApplicationController
  # GET /eventtimes
  # GET /eventtimes.xml
  def index
    @eventtimes = Eventtime.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eventtimes }
    end
  end

  # GET /eventtimes/1
  # GET /eventtimes/1.xml
  def show
    @eventtime = Eventtime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @eventtime }
    end
  end

  # GET /eventtimes/new
  # GET /eventtimes/new.xml
  def new
    @eventtime = Eventtime.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @eventtime }
    end
  end

  # GET /eventtimes/1/edit
  def edit
    @eventtime = Eventtime.find(params[:id])
  end

  # POST /eventtimes
  # POST /eventtimes.xml
  def create
    @eventtime = Eventtime.new(params[:eventtime])

    respond_to do |format|
      if @eventtime.save
        format.html { redirect_to(@eventtime, :notice => 'Eventtime was successfully created.') }
        format.xml  { render :xml => @eventtime, :status => :created, :location => @eventtime }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @eventtime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /eventtimes/1
  # PUT /eventtimes/1.xml
  def update
    @eventtime = Eventtime.find(params[:id])

    respond_to do |format|
      if @eventtime.update_attributes(params[:eventtime])
        format.html { redirect_to(@eventtime, :notice => 'Eventtime was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @eventtime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /eventtimes/1
  # DELETE /eventtimes/1.xml
  def destroy
    @eventtime = Eventtime.find(params[:id])
    @eventtime.destroy

    respond_to do |format|
      format.html { redirect_to(eventtimes_url) }
      format.xml  { head :ok }
    end
  end
end
