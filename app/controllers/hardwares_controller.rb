class HardwaresController < InheritedResources::Base

  private

    def hardware_params
      params.require(:hardware).permit(:name, :description, :category, :price, :currency)
    end
end

