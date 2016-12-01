class BookPagesController < ApplicationController

  def show
    set_book_page
  end

  private
  def set_book_page
    if params[:id]
      @book_page = BookPage.find(params[:id])
    elsif params[:title] && params[:format]
      @book_page = BookPage.where(title: "#{params[:title]}.#{params[:format]}").first
    elsif params[:title]
      @book_page = BookPage.where(title: "#{params[:title]}").first
    end
  end
end
