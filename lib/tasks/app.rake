  namespace :app do

    desc "Configura o ambiente para demonstração"
    task setup: :environment do
        show_spinner("Resetando BD...") { %x(rails db:reset) }
        show_spinner("Cadastrando usuário padrão...") { %x(rails app:add_default_user) }
        show_spinner("Cadastrando categorias de produtos...") { %x(rails app:add_categories) }
        show_spinner("Cadastrando produtos...") { %x(rails app:add_products) }
        show_spinner("Cadastrando sugestão de listas de presentes...") { %x(rails app:add_suggestion_lists) }
    end

    desc "Adiciona usuário padrão"
    task add_default_user: :environment do
        User.create({
          name: Faker::Name.name
        })  
    end

    desc "Adiciona categorais de produtos"
    task add_categories: :environment do
    	(1..13).each do |i|
        	Category.create({
          		name: Faker::Commerce.department
        	})  
      	end
    end
  
    desc "Adiciona produtos"
    task add_products: :environment do
    	(1..891).each do |i|
        	Product.create({
          		name: Faker::Commerce.product_name,
          		category_id: Category.find(Category.pluck(:id).sample).id,
          		description: Faker::Lorem.paragraph(sentence_count: 5, supplemental: false, random_sentences_to_add: 20),
          		price: Faker::Commerce.price
        	})  
      	end
    end

    desc "Adiciona sugestao de listas"
    task add_suggestion_lists: :environment do
    	(1..17).each do |i|
        	GiftList.create({
          		name: Faker::Space.star_cluster,
          		suggestion: true
        	})  
      	end
    end
  
    def show_spinner(msg_start, msg_end = "Concluído!")
    	spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
      	spinner.auto_spin
      	yield
      	spinner.success("(#{msg_end})")    
    end
  end