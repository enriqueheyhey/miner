class TransactionsController < ApplicationController
  before_filter :restrict_user_by_id, only: [:show, :edit, :update, :destroy]
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  # GET /transactions
  # GET /transactions.json
  def index
    @addresses = Address.all.order('display_state ASC')
    @transactions = Transaction.all
    @transaction = Transaction.new
    @transactions_for_current_user = Transaction.where(:user_id == current_user.id)
    puts 'hi'
    puts @transactions_for_current_user.pluck(:address_array)
    puts 'hp'
    @addresses_for_current_user = @transactions_for_current_user.pluck(:address_array)
    @addresses_for_current_user_flattened = @addresses_for_current_user.to_s.gsub('"', '')
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # GET /transactions/1/edit
  def edit
  end

  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to transactions_path, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to index, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:created_at, :updated_at, :user_id, :address_array, :status )
    end

  protected

  # redirect if user not logged in or does not have a valid role
  def restrict_user_by_id
    if current_user
      unless current_user.id == 1 || current_user.id == 2
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
end
