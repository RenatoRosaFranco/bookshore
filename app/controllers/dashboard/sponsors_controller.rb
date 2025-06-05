# frozen_string_literal: true

module Dashboard
  class SponsorsController < HomeController
    before_action :set_sponsor, only: [ :show, :edit, :update, :destroy ]

    def index
      @sponsors = Sponsor.order(created_at: :desc)
                        .page(params[:page])
                        .per(12)
    end

    def new
      @sponsor = Sponsor.new
    end

    def create
      sponsor = Sponsor.new(sponsor_params)

      if sponsor.save
        flash[:success] = "Patrocinador cadastrado com sucesso."
        redirect_to dashboard_sponsor_path(sponsor)
      else
        render :new
      end
    end

    def edit; end

    def show; end

    def update
      if @sponsor.update(sponsor_params)
        flash[:success] = "Patrocinador atualizado com sucesso."
      else
        render :edit
      end
    end

    def destroy
      if @sponsor.destroy
        flash[:success] = "Patrocinador removido com sucesso."
        redirec_to dashboard_sponsors_path
      else
        flash[:error] = "Falha ao remover patrocinador, tente novamente."
        redirect_to dashboard_sponsor_path(sponsor)
      end
    end

    private

    def set_sponsor
      @sponsor = Sponsor.find(params[:id])
    end

    def sponsor_params
      params.require(:sponsor).permit(:logo, :name, :kind, :user_id)
    end
  end
end
