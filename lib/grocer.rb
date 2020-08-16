require "pry"
def find_item_by_name_in_collection(name, collection)
  search_item=nil 
  collection.each do |item|
    #binding.pry
    if item[:item] == name 
      search_item=item
    end
  end
  return search_item
end

def consolidate_cart(cart)
  bagged_items=[]
  cart.each do |item|
    #binding.pry
    lookup = find_item_by_name_in_collection(item[:item] , bagged_items);
    if lookup == nil 
      item[:count] = 1
      bagged_items << item
      else lookup[:count] += 1
    end
  end
  bagged_items
end
