class RelationsController < ApplicationController

    def follow
        @current_user.createFollow(params[:id])
        @user_id = params[:id] #新しくリングを作成するのに使用 フォローされるユーザーのid
        @user = User.find(params[:page_user_id]) #showページのユーザー
        @page_follow = false

        if params[:page_follow].present? #フォローフォロワー画面ではなく名前の横を押した時
            @page_follow = true
        end
    end

    def unfollow
        @current_user.destroyFollow(params[:id])
        @user_id = params[:id]
        @user = User.find(params[:page_user_id]) #showページのユーザー
        @page_follow = false

        if params[:page_follow].present?
            @page_follow = true
        end
    end

end
