# _plugins/private_posts.rb
#
# When the environment variable JEKYLL_ENV=public is set, this plugin
# strips any post that has `private: true` in its front matter from the
# site before rendering. This prevents both the post HTML and any index
# listing from including that post in the public deployment.
#
# In any other environment (e.g. local dev or the private Cloudflare
# Pages build) all posts are included as normal.

module Jekyll
  class PrivatePostFilter < Generator
    safe true
    priority :high

    def generate(site)
      return unless ENV['JEKYLL_ENV'] == 'public'

      before = site.posts.docs.size
      site.posts.docs.reject! { |post| post.data['private'] == true }
      removed = before - site.posts.docs.size

      Jekyll.logger.info "PrivatePosts:", "Excluded #{removed} private post(s) from public build."
    end
  end
end
