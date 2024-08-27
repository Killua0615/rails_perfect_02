class BooksController < ApplicationController
  protect_from_forgery except: [:destroy]
  # before_action :set_book, only: [:show, :destroy]
  around_action :action_logger, only: [:destroy]

  def show
    Rails.logger.info "params[:id]: #{params[:id]}"
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { head :no_content }
    end
  end
end