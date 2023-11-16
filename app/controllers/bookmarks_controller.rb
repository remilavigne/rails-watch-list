class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = List.new(bookmarks_params)
    @bookmark.save
    redirect_to bookmarks_path
  end

  def delete
  end

  private

  def bookmarks_params
    params.require(:bookmark).permit(:name)
  end
end
