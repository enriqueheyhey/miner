class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = Transaction.all
    #@wallets = Wallet.where("user_id = #{current_user.id}")
    #@servers = Server.where("user_id = #{current_user.id}")
    #@transactions = Transaction.where("user_id = #{current_user.id}")
  end
end
