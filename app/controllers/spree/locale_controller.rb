module Spree
  class LocaleController < Spree::StoreController
    def index
      render :index, layout: false
    end

    def mobile
      render :mobile, layout: false
    end

    def set
      redirect_to root_path(locale: params[:switch_to_locale])
    end
  end
end
