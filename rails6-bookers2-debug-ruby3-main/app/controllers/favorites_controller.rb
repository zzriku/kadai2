class FavoritesController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: book.id)
    favprote.save
    redirect_to fallback_location:book_path(book)
  end

  def destroy
    book = Book.find(Prams[:book_id])
    favorite = current_user.favorites.find_by(book_id: book.id)
    favorite.destroy
    redirect_to fallback_location:book_path(book)
  end
end
