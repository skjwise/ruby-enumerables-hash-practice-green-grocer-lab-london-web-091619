def consolidate_cart(cart)
  new_cart = {}
  cart.each do |items_array|
    items_array.each do | item, attribute_hash|
      new_cart[item] ||= attribute_hash
      new_cart[item][:count] ? 
end

def apply_coupons(cart, coupons)
  
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
