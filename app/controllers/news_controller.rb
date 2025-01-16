class NewsController < ApplicationController
  before_action :require_login # Aplica o filtro para todas as ações
  before_action :set_news, only: %i[ show edit update destroy ]

  # GET /news or /news.json
  def index
    @news = News.all
  end

  # GET /news/1 or /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news or /news.json
  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to news_url(@news), notice: "News was successfully created." }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1 or /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to news_url(@news), notice: "News was successfully updated." }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1 or /news/1.json
  def destroy
    @news.destroy!

    respond_to do |format|
      format.html { redirect_to news_index_url, notice: "News was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Verifica se o usuário está logado
    def require_login
      unless logged_in?
        redirect_to login_path, alert: "Você precisa fazer login para acessar esta página."
      end
    end

    # Define o método para verificar se o usuário está logado
    def logged_in?
      session[:user_id].present?
    end

    # Use callbacks para compartilhar configuração comum ou restrições entre ações.
    def set_news
      @news = News.find(params[:id])
    end

    # Permitir apenas parâmetros confiáveis.
    def news_params
      params.require(:news).permit(:title, :description, :picture, :display_date, :iso_date)
    end
end
