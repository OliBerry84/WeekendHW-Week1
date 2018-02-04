def pet_shop_name(pet_shop_hash)
  return pet_shop_hash[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_hash, add_cash)
  pet_shop_hash[:admin][:total_cash] += add_cash
end

def add_or_remove_cash(pet_shop_hash, remove_cash)
  pet_shop_hash[:admin][:total_cash] += remove_cash
end

def pets_sold(pet_shop_hash)
return pet_shop_hash[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_hash, sold)
  new_pets_sold = pets_sold(pet_shop_hash) + sold
  pet_shop_hash[:admin][:pets_sold] = new_pets_sold
  return new_pets_sold
end

def stock_count(pet_shop_hash)
  return pet_shop_hash[:pets].count
end

def pets_by_breed(pet_shop_hash, breed)
  breed_list = []
  pets_array = pet_shop_hash[:pets]
  for pet in pets_array
    if pet[:breed] == breed
      breed_list.push(breed)
    end
  end
  return breed_list
end

def find_pet_by_name(pet_shop_hash, name)
  pets_array = pet_shop_hash[:pets]
  for pet in pets_array
    if pet[:name] == name
    return pet
    end
  end
  return nil
end

def remove_pet_by_name(hash, name)
  pets_array = hash[:pets]
  pet_to_delete = find_pet_by_name(hash, name)
  pets_array.delete(pet_to_delete)
end

def add_pet_to_stock(hash, new_pet)
  array_of_pets = hash[:pets]
  return array_of_pets.push(new_pet)
end

def customer_pet_count (customer_list)
  return customer_list[:pets].count
end

def add_pet_to_customer(customer_hash, pet_shop_hash)
  return customer_hash[:pets].push(pet_shop_hash)
end

# def customer_can_afford_pet(customer_hash, pet_price)
#   customer_array = customer_hash[:cash]
#   for cash in customer_array
#     if cash[:cash] <= pet_price[:price]
#       return "False"
#     end
#   end
# end
