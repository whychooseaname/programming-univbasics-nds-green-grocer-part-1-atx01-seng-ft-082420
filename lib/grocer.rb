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
  #binding.pry
  cart.each do |item|
    #binding.pry
    lookup = find_item_by_name_in_collection(item[:item] , bagged_items);
   #binding.pry
    if lookup == nil 
      item[:count] = 1
      bagged_items << item
      else lookup[:count] += 1
    end
  end
  bagged_items
end

#cart is the shopping cart 

#bagged items is the final product
#look through each item in the cart
#lookup to see if it is already in the bagged items
#  if not, its added to the bagged items with a value of 1 
#    if it is look through the bagged items for the item you have scanned
#      if the item you scanned is equal to an item in the bag 
#        bagged item count increases by 1
