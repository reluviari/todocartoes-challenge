  namespace :app do

    desc "Configura o ambiente para demonstração"
    task setup: :environment do
      # if Rails.env.development?
        show_spinner("Apagando BD...") { %x(rails db:drop) }
        show_spinner("Criando BD...") { %x(rails db:create) }
        show_spinner("Migrando BD...") { %x(rails db:migrate) }
        show_spinner("Cadastrando usuário padrão...") { %x(rails dev:add_default_user) }
        show_spinner("Cadastrando categorias de produtos...") { %x(rails dev:add_categories) }
        show_spinner("Cadastrando produtos...") { %x(rails dev:add_products) }
        show_spinner("Cadastrando sugestão de listas de presentes...") { %x(rails dev:add_suggestion_lists) }
      # else
        # puts "Você não está em ambiente de desenvolvimento!"
      # end
    end

    desc "Adiciona usuário padrão"
    task add_default_user: :environment do
        User.create({
          name: Faker::Name.name
        })  
    end

    desc "Adiciona categorais de produtos"
    task add_categories: :environment do
      (1..10).each do |i|
        Category.create({
          name: Faker::Commerce.department
        })  
      end
    end
  
    desc "Adiciona produtos"
    task add_products: :environment do
      (1..50).each do |i|
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
      (1..50).each do |i|
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