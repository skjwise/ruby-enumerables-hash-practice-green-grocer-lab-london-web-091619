def consolidate_cart(cart)
  final = Hash.new 0
  count = :count
  cart.each do |hash|
    hash.each do |food, info|
      if final.has_key?(food) == false
        final[food] = info
        final[food][count] = 1
        elsif final.has_key?(food)
        final[food][:count] += 1
      end
    end
  end
  final
end

def apply_coupons(cart, coupons)
  
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
