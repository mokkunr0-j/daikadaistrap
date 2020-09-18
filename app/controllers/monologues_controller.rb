class MonologuesController < ApplicationController
  before_action :set_monologue, only: [:show, :edit, :update, :destroy]
  def index
    @monologues = Monologue.all.order(id: "DESC")
  end

  def new
    @monologue = Monologue.new
  end

  def create
    @monologue = Monologue.new(monologue_params)
    if params[:back]
      render :new
    else
      if @monologue.save
        redirect_to monologues_path, notice: "つぶやきを投稿しました！"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @monologue.update(monologue_params)
      redirect_to monologues_path, notice: "つぶやきを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @monologue.destroy
    redirect_to monologues_path, notice: "つぶやきを削除しました！"
  end

  def confirm
    @monologue = Monologue.new(monologue_params)
    render :new if @monologue.invalid?
  end

  private
  def monologue_params
    params.require(:monologue).permit(:content)
  end
  def set_monologue
    @monologue = Monologue.find(params[:id])
  end
end
