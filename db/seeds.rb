# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Machine.destroy_all
# Owner.destroy_all
# Snack.destroy_all

@owner = Owner.create(name: "Sam's Snacks")
@sam = Owner.create(name: "Sam's Snacks")
@dons = @owner.machines.create(location: "Don's Mixed Drinks")

@sam.machines.create(location: "Turing Basement")

@kitkat = @dons.snacks.create(name: "Kit Kat", price: 2)
@twix = @dons.snacks.create(name: "Twix", price: 2)
