class Application

    @@items = []

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path=="/items/&lt;ITEM NAME>"
            resp.write "You requested the items price"
        end
        item_price = req.path.split("/items/").last
            if @@items.include?(item_price)
            resp.write "3.42"
        else
            resp.write "Route not found"
            resp.status = 404
        end
        #  if req.path=="/items/&lt;ITEM NAME>"
        #   item_price = req.path.split("/items/").last
        #     @@items.include?(item_price)
        #     resp.write "3.42"
        # end
        # else
        #     resp.write "Item not found"
        #     resp.status = 400
        # end 
        resp.finish
    end
end    
            