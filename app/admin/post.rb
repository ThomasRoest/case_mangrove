ActiveAdmin.register Post do

permit_params :title, :body, :published, :post_category_id

scope :published
scope :not_published

  index do 
    column :id 
      column "Categorie" do |post|
      post.post_category.name
    end
    column "Titel" do |post|
      link_to post.title, admin_post_path(post)
    end
    column 'geplaatst op', :created_at
    column :published
  end
end
