ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title:  "Mangrove Case dashboard" do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

  columns do
      column do
        panel "Recente artikelen" do
          ul do
            Post.first(10).map do |post|
              li link_to(post.title, admin_post_path(post))
              li time_tag(post.created_at)
            end
          end
        end
        strong { link_to "Alle Artikelen", admin_posts_path }
      end

      # column do
      #   panel "Categorie" do
      #     PostCategory.all.map do |c|
      #       link_to(c.name, admin_posts_path(c))
      #     end
      #   end
      # end
    end


  end # content
end
