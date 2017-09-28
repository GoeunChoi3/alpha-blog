module ApplicationHelper
    def gravater_for(user, options = {size: 80})
        gravater_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        gravater_url = "http://secure.gravater.com/avatar/#{gravater_id}?s=#{size}"
        image_tag(gravater_url,alt: user.username, class: "img-circle")
    end
end
