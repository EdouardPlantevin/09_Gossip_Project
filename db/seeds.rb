require 'faker'

#On créer les Utilisateurs
10.times do
  i = rand(1..10)
  a = rand (1..20)
  u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hobbit.quote, email: Faker::Internet.email, age: Faker::Number.number(2), city_id: i, gossip_id: a)
end

#On créer les commentaires
20.times do
  a = rand(1..10)
  b = rand(1..20)
  com = Comment.create(content: Faker::OnePiece.quote, user_id: a, gossip_id: b)
end

#On créer les villes
10.times do
  v = City.create(name: Faker::Fallout.location, postal_code: Faker::Number.number(5))
end

#On créer nos potins
20.times do
  i = rand(1..10)
  g = Gossip.create(title: Faker::OnePiece.island, content: Faker::OnePiece.quote, user_id: i)
end

#On créer nos tags
10.times do |i|
  i += 1
  t = Tag.create(title: Faker::VForVendetta.character, gossips_id: i)
end

#On créer nos messages privés
1.times do
  a = rand(1..5)
  b = rand(6..10)
  m = PrivateMessage.create(content: Faker::OnePiece.quote, user_id: a, users_id: b)
end

#On créer nos like avec des conditions pour assigner ces likes à soit un commentaire, soit un potins ! 
20.times do
  u = rand(1..10)
  b = rand(1..10)
  a = rand(1..2)
    if a == 2
      l = Like.create(user_id: u, comment_id: b)
    else
      l = Like.create(user_id: u, gossip_id: b)
    end
end
