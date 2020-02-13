module Api::V1
  class QuotesController < ApplicationController
    before_action :set_quote, only: [:show, :update, :destroy]

    # GET /quotes
    def index
      if params[:page_id]
        @quotes = Quote.where(page_id: params[:page_id])
        render json: @quotes
      # elsif params[:search]
        @quotes = Quote.includes(:page).where("page.month" => params[:search]
          .or(Quote.includes(:page).where("page.thought" => params[:search])
          .or(Quote.includes(:page).where(quote_text: params[:search]))
          .or(Quote.includes(:page).where(quote_author: params[:search]))
      else
        @quotes = Quote.all()
        render json: @quotes
      end
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
