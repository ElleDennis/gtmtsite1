# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

materials_share_category = Category.where(name: 'materials_share').first_or_create(name: 'materials_share')
for_sale_category = Category.where(name: 'for_sale').first_or_create(name: 'for_sale')
tool_rental_category = Category.where(name: 'tool_rental').first_or_create(name: 'tool_rental')

Subcategory.where(name: 'home', category_id: materials_share_category.id).first_or_create(name: 'home', category_id: materials_share_category.id)
Subcategory.where(name: 'garden', category_id: materials_share_category.id).first_or_create(name: 'garden', category_id: materials_share_category.id)

Subcategory.where(name: 'home', category_id: for_sale_category.id).first_or_create(name: 'home', category_id: for_sale_category.id)
Subcategory.where(name: 'garden', category_id: for_sale_category.id).first_or_create(name: 'garden', category_id: for_sale_category.id)

Subcategory.where(name: 'home', category_id: tool_rental_category.id).first_or_create(name: 'home', category_id: tool_rental_category.id)
Subcategory.where(name: 'garden', category_id: tool_rental_category.id).first_or_create(name: 'garden', category_id: tool_rental_category.id)
