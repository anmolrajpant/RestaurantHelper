class TablesController < ApplicationController
  def index
    @tables = Table.all
  end

  def show
    @table = Table.find(params[:id])
  end

  def new
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)
    respond_to do |format|
      if @table.save
        format.html { redirect_to @table, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @table }
      else
        format.html { render :new }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  def table_params
    params.require(:table).permit(:customerName, :tableNo)    
  end
end
