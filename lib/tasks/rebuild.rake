namespace :rebuild do
  desc 'TODO'
  task data: :environment do
    Category.destroy_all
    Product.destroy_all
    ProductVariant.destroy_all
    ProductImage.destroy_all
    files = Dir.children(Rails.root.join('db/seeds_files'))
    product_variants = [
      { label: 'PP', variant: rand(10) },
      { label: 'P', variant: rand(10) },
      { label: 'M', variant: rand(10) },
      { label: 'G', variant: rand(10) },
      { label: 'GG', variant: rand(10) },
      { label: 'Plus Size', variant: 'Único' }
    ]
    %w[
      Lançamentos Pijamas Fitness Praia Íntima Roupas Outlet
    ].map do |category_name|
      category = Category.create(title: category_name, short_description: Faker::Lorem.paragraph, ratings: rand(20))
      category_filename = files.sample
      category.image.attach(io: File.open(Rails.root.join('db/seeds_files', category_filename).to_s),
                            filename: 'category.png')
      category.save!
      4.times.each do
        product = category.products.build(title: Faker::Commerce.product_name, description: Faker::Lorem.paragraphs.join("\n"),
                                          price: rand(500), ratings: rand(20))
        product_filename = files.sample
        product.image.attach(io: File.open(Rails.root.join('db/seeds_files', product_filename).to_s),
                             filename: 'product.png')
        product.product_variants.build(product_variants)

        5.times.each do
          product_image_filename = files.sample
          product_image = product.product_images.build(description: Faker::Lorem.sentence)
          product_image.image.attach(io: File.open(Rails.root.join('db/seeds_files', product_image_filename).to_s),
                                     filename: 'product.png')
          product_image.save!
        end
        product.save!
      end
    end

    Category.first.update(featured: true)
    Category.take.update(featured: true)
    Category.last.update(featured: true)
  end
end
