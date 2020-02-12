module Api::V1
  class PagesController < ApplicationController
    before_action :set_page, only: [:show, :update, :destroy]

    # GET /pages/book_id/month/day
    def check
      @page = Page.find_by(book_id: params[:book_id], month: params[:month], day: params[:day])
      if @page
        render json: @page
      else
        @page = {id: 0, book_id: 0, month: "", day: ""}
        render json: @page
      end
    end

    # GET /pages/1
    def show
      render json: @page
    end

    # POST /pages
    def create
      @page = Page.create(page_params)
      render json: @page
    end

    # PATCH/PUT /pages/1
    def update
      if @page.update(page_params)
        render json: @page
      else
        render json: @page.errors, status: :unprocessable_entity
      end
    end

    # DELETE /pages/1
    def destroy
      @page.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_page
        @page = Page.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def page_params
        params.require(:page).permit(:month, :day, :thought, :book_id)
      end
  end
end
