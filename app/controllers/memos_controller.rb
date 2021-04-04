class MemosController < ApplicationController
    def index
        #トップページが呼ばれた時に動作するアクション
        @memos = Memo.all
    end
    def new 
        #新規登録ページが呼ばれた時に動作するアクション
    end
    def create
        #新しいメモがフォームからPostされた時に動作するアクション
        Memo.create(title:params["memos"]["title"],body:params["memos"]["body"])
        redirect_to "/"
    end
end
