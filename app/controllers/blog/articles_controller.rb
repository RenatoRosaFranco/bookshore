# frozen_string_literal: true

module Blog
  class ArticlesController < ApplicationController
    before_action :set_article, only: [ :show ]

    def index
      @articles = Article.order(created_at: :desc)
                         .page(params[:page])
                         .per(9)
    end

    def show; end

    private

    def set_article
      @article = Article.find(params[:id])
    end
  end
end
