Factory.define :user do |u|  
  u.email "lee@example.com"
  u.password "secret"
end

Factory.define(:product) do |f|
  f.name "The Fuzz Bag"
  f.description "The Fuzz Bag is a gig bag for guitar players.
             It combines the comfortable aesthetic of a 
             classic gym bag with a padded pedal case and custom 
             pockets for your gear."
  f.user_id "1"
end