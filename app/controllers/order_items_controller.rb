class OrderItemsController < InheritedResources::Base

  private

    def add_device_params
      params.require(:add_device).permit(:quantity, :price, :order_id, :user_id, :hardware_id)
    end
end

