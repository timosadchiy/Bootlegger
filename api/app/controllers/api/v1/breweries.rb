module API
  module V1
    class Breweries < Grape::API
      include API::V1::Defaults

      resource :breweries do
        desc "Return all breweries"
        get "", root: :contacts do
          Brewery.all
        end

        desc "Return a brewery"
        params do
          requires :id, type: String, desc: "ID of the brewery"
        end
        get ":id", root: "brewery" do
          Brewery.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
