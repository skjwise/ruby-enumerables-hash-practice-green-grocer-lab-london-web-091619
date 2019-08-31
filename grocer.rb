def consolidate_cart(cart)
  final = Hash.new 0
  count = :count
  cart.each do |hash|
    hash.each do |food, info|
      if final.has_key?(food) == false
        final[food] = info
        final[food][:count] = 1
        elsif final.has_key?(food)
        final[food][:count] += 1
      end
    end
  end
  final
end

def apply_coupons(cart, coupons)
  coupons.each do |item|
    name_of_item = item[:item]
    if cart.has_key?(name_of_item) == true && cart[name_of_item][:count] >= item[:num]
      cart[name_of_item][:count] = cart[name_of_item][:count] - item[:num]
      new_item = new_item + (" W/COUPON")
      puts cart.has_key?(new_item)
      if cart.has_key?(new_item) == false
        cart[new_item] = {
          :price => item[:cost], :clearance => cart[name_of_item][:clearance], :count => 1
        }
      else
        cart[new_item][:count] += 1
      end
    end
  end
  cart
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
