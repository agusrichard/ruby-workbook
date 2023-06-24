class Api::V1::RecordsController < ApplicationController
  before_action :find_record, only: [:show, :update, :destory]

  def index
    @records = Record.all
    render json: @records
  end

  def show
    render json: @record
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      render json: @record
    else
      render error: { error: 'Unable create record' }, status: 400
    end
  end

  def update
    if @record
      @record.update(record_params)
      render json: { message: 'Record is updated' }, status: 200
    else
      render json: { error: 'Unable update record' }, status: 400
    end
  end

  def destroy
    if @record
      @record.destroy
      render json: { message: 'Record is deleted' }, status: 200
    else
      render json: { error: 'Unable delete record' }, status: 400
    end
  end

  private

  def record_params
    params.require(:record).permit(
      :user_id,
      :date,
      :description,
      :amount,
      :source
    )
  end

  def find_record
    @record = Record.find(params[:id])
  end
end
