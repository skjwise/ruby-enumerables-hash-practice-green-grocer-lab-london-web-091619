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

def apply_coupons(cart:[], coupons:[])
  coupons.each do |coupon|
    coupon_name = coupon[:item]
    coupon_item_num = coupon[:num]
    cart_item = cart[coupon_name]
    next if cart_item.nil? || cart_item[:count] < coupon_item_num
      cart_item[:count] -= coupon_item_num
      coupon_in_cart = cart["#{coupon_name} W/COUPON"]
      if coupon_in_cart
        coupon_in_cart[:count] += 1
      else
        cart["#{coupon_name} W/COUPON"] = {
          price: coupon[:cost], clearance: cart_item[:clearance], count: 1
        }
      end
    end
    cart
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
