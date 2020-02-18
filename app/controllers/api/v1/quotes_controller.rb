module Api::V1
  class QuotesController < ApplicationController
    include CurrentUserConcern
    before_action :set_quote, only: [:show, :update, :destroy]

    # GET /quotes
    def index
      @current_user = current_user
      @quotes = Quote.joins(:page, 'LEFT JOIN books ON books.id = pages.book_id')
          .where("books.user_id = ?", @current_user.id)
      render json: @quotes, :include => :page
    end

    # GET /quotes/1
    def show
      render json: @quote
    end

    # POST /quotes
    def create
      @quote = Quote.create(quote_params)
      render json: @quote
    end

    # PATCH/PUT /quotes/1
    def update
      if @quote.update(quote_params)
        render json: @quote
      else
        render json: @quote.errors, status: :unprocessable_entity
      end
    end

    # DELETE /quotes/1
    def destroy
      @quote.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_quote
        @quote = Quote.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def quote_params
        params.require(:quote).permit(:quote_author, :quote_text, :page_id, :search)
      end
  end
end
