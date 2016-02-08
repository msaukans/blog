json.array!(@articles) do |article|
  json.extract! article, :id, :title, :posted_on, :featured_img, :content, :category
  json.url article_url(article, format: :json)
end
