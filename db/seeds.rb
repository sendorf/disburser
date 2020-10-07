# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute <<-SQL
INSERT INTO merchants (id, name, email, cif, created_at, updated_at) VALUES
  ('0e325d4a-46f4-48b4-8b5f-b55048fdfdfc', 'Treutel, Schumm and Fadel', 'info@treutel-schumm-and-fadel.com', 'B611111111', '#{Time.now - 7.hours}', '#{Time.now - 7.hours}'),
  ('62143047-e71f-4dbc-a917-5a8fd588ee9a', 'Windler and Sons', 'info@windler-and-sons.com', 'B611111112', '#{Time.now - 7.hours}', '#{Time.now - 7.hours}'),
  ('444cf3a3-b54f-4b3c-93fb-5d2a1cf13fe2', 'Mraz and Sons', 'info@mraz-and-sons.com', 'B611111113', '#{Time.now - 7.hours}', '#{Time.now - 7.hours}'),
  ('d2c71a50-ee22-43a1-b3e7-c8430aa9d3af', 'Cummerata LLC', 'info@cummerata-llc.com', 'B611111114', '#{Time.now - 7.hours}', '#{Time.now - 7.hours}')
SQL

ActiveRecord::Base.connection.execute <<-SQL
INSERT INTO shoppers (id, name, email, nif, created_at, updated_at) VALUES
  ('0e325d4a-46f4-48b4-8b5f-b55048fdfdfc', 'Olive Thompson', 'olive.thompson@not_gmail.com', '411111111Z', '#{Time.now - 6.hours}', '#{Time.now - 6.hours}'),
  ('62143047-e71f-4dbc-a917-5a8fd588ee9a', 'Virgen Anderson', 'virgen.anderson@not_gmail.com', '411111112Z', '#{Time.now - 6.hours}', '#{Time.now - 6.hours}'),
  ('444cf3a3-b54f-4b3c-93fb-5d2a1cf13fe2', 'Reagan Auer', 'reagan.auer@not_gmail.co', '411111113Z', '#{Time.now - 6.hours}', '#{Time.now - 6.hours}'),
  ('d2c71a50-ee22-43a1-b3e7-c8430aa9d3af', 'Shanelle Satterfield', 'shanelle.satterfield@not_gmail.com', '411111114Z', '#{Time.now - 6.hours}', '#{Time.now - 6.hours}')
SQL

ActiveRecord::Base.connection.execute <<-SQL
INSERT INTO orders (merchant_id, shopper_id, amount, created_at, updated_at, completed_at) VALUES
  ('0e325d4a-46f4-48b4-8b5f-b55048fdfdfc', '0e325d4a-46f4-48b4-8b5f-b55048fdfdfc', 61.74, '#{Time.now - 5.hours}', '#{Time.now - 5.hours}', '#{Time.now - 2.hours}'),
  ('0e325d4a-46f4-48b4-8b5f-b55048fdfdfc', '62143047-e71f-4dbc-a917-5a8fd588ee9a', 293.08, '#{Time.now - 5.hours}', '#{Time.now - 5.hours}', null),
  ('62143047-e71f-4dbc-a917-5a8fd588ee9a', '62143047-e71f-4dbc-a917-5a8fd588ee9a', 373.33, '#{Time.now - 5.hours}', '#{Time.now - 5.hours}', null),
  ('444cf3a3-b54f-4b3c-93fb-5d2a1cf13fe2', '444cf3a3-b54f-4b3c-93fb-5d2a1cf13fe2', 60.48, '#{Time.now - 5.hours}', '#{Time.now - 5.hours}', '#{Time.now - 2.hours}'),
  ('d2c71a50-ee22-43a1-b3e7-c8430aa9d3af', 'd2c71a50-ee22-43a1-b3e7-c8430aa9d3af', 213.97, '#{Time.now - 5.hours}', '#{Time.now - 5.hours}', '#{Time.now - 2.hours}')  
SQL
