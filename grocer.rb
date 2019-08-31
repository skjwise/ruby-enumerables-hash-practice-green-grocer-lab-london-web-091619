def consolidate_cart(cart:[])
  cosolidated_cart = {}
  cart.each do |item|
    item_name = item.key[0]
    cosolidated_cart[item_name] = item_values[0]
    if cosolidated_cart[item_name][:count]
      cosolidated_cart[item_name][:count] += 1
    else
      cosolidated_cart[item_name][:count] = 1
    end
  end
  cosolidated_cart
end

def apply_coupons(cart, coupons)
  
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
