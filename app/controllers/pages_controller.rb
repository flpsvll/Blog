class PagesController < ApplicationController
    def index
      @pages = Page.order(created_at :acs)
    end
  
    def show
      @page = Page.find(params[:id])
    end
  
    def new
      @page = Page.new
    end
  
    def create
      @page = Page.new(page_params)
  
      if @page.save
        redirect_to page_path(@page.id)
      else
        render :new
      end
    end
  
    def edit
      @page = Page.find(params[:id])
    end
  
    def destroy
        page.find(params[:id].destroy
        redirect_to PagesController
    end 
    private
  
      def page_params
        params.require(:page).permit(:title, :author, :body)
      end
  end 