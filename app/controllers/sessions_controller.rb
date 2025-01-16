class SessionsController < ApplicationController
  def new
    # Página de login
  end

  def create
    if params[:username] == ENV['ADMIN_USERNAME'] && params[:password] == ENV['ADMIN_PASSWORD']
      session[:user_id] = 1
      redirect_to news_index_path, notice: 'Login realizado com sucesso!'
    else
      flash[:alert] = 'Credenciais inválidas'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Logout realizado com sucesso!'
  end
end
