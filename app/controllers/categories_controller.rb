class CategoriesController < ApplicationController
    def show
       @category_id = Category.find(params[:id] )
       @memos = Memo.where(category_id: params[:id])
    end
end
