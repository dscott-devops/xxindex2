namespace :import do

  desc "Import from CSV"
  task categories: :environment do
    filename = File.join Rails.root, "cats.txt"
    CSV.foreach(filename) do |row|
      data = row[0].gsub("-"," ")
      name = data.titleize
      Category.create(name: name)
    end
  end

  task pornstars: :environment do
    filename = File.join Rails.root, "pornstars.txt"
    CSV.foreach(filename) do |row|
      name = row[0].titleize
      Pornstar.create(name: name)
    end
  end

  task videos: :environment do
    filename = File.join Rails.root, "videos1000.csv"
    CSV.foreach(filename,:liberal_parsing => true) do |row|
      site,embed,pornstars, category, duration, views, likes, dislikes, bigthumb, bigthumbs,weblink, title, thumb, tags, video_id, thumbs, preview, description = row

      p row
      if site.nil?
        site = ''
      end
      if embed.nil?
        embed = ""
      end
      if pornstars.nil?
        pornstars = ""
      end
      if category.nil?
        category = ""
      end
      if duration.nil?
          duration = 0
      end
      if views.nil?
          views = 0
      end
      if likes.nil?
          likes = 0
      end
      if dislikes.nil?
        dislikes = 0
      end
      if bigthumb.nil?
          bigthumb = ""
      end
      if bigthumbs.nil?
        bigthumbs = ""
      end
      if weblink.nil?
          weblink = ""
      end
      if title.nil?
          title = ""
      end
      if thumb.nil?
          thumb = ""
      end
      if tags.nil?
        tags = ""
      end
      if video_id.nil?
          video_id = ""
      end
      if thumbs.nil?
          thumbs = ""
      end
      if preview.nil?
          preview = ""
      end
      if description.nil?
          description = ""
      end

      video = Video.create(site: site,embed: embed ,pornstars: pornstars,
        category: category, duration: duration, views: views, likes: likes,
        dislikes: dislikes, bigthumb: bigthumb, bigthumbs: bigthumbs ,weblink: weblink,
        title: title, thumb: thumb, tags: tags, video_id: video_id, thumbs: thumbs,
        preview: preview, description: description)

        if video
          p "New record created: #{video.id}"
          id = video.id
          if ! pornstars.nil?
            models_temp = pornstars.gsub("'","")
            models = models_temp.split(";")

            models.each do |model|
            p "Model name: #{model}"

              pornstar = Pornstar.find_by(name: model)
              if ! pornstar
                pornstar = Pornstar.create(name: model)
              end
              PornstarVideo.create(pornstar_id: pornstar.id, video_id: video.id)
            end

            if ! category.nil?
              category_temp = category.gsub("'","")
              categories = category_temp.split(";")

              categories.each do |category|
              p "Category name: #{category}"

                cat = Category.find_by(name: category)
                if ! cat
                  cat = Category.create(name: category)
                end
                CategoryVideo.create(category_id: cat.id, video_id: video.id)
              end
            end

            if ! tags.nil?
              tag_temp = tags.gsub("'","")
              tags_arr = tag_temp.split(";")

              tags_arr.each do |tag|
              p "Tag name: #{tag}"

                tag1 = Tag.find_by(name: tag)
                if ! tag1
                  tag1 = Tag.create(name: tag)
                end
                TagVideo.create(tag_id: tag1.id, video_id: video.id)
              end
            end



          end
        end

    end
  end
end
