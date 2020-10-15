class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(monologue_id: params[:monologue_id])
    redirect_to monologues_path, notice: "#{favorite.monologue.user.name}さんのつぶやきをお気に入り登録しました"
  end
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    url = request.referer
    redirect_to url, notice: "#{favorite.monologue.user.name}さんのつぶやきをお気に入り解除しました"
  end
  def index
    if current_user == nil
      redirect_to new_session_path
    else
      @user_favorites = current_user.favorites
    end
  end
end
