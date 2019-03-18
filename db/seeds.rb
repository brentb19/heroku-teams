Team.destroy_all
User.destroy_all

3.times do
  team = Team.create(
    name: Faker::Team.name,
    sport: Faker::Team.sport,
  )

  5.times do 
    team.users.create(
      name: Faker::Name.unique.name,
    )
  end
end
