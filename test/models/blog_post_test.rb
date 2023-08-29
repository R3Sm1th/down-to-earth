require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft returns TRUE for a draft post" do
    # binding.irb
    assert BlogPost.new(published_at: nil).draft?
  end
  test "draft returns FALSE for a scheduled post" do
    # binding.irb
    refute BlogPost.new(published_at: 1.year.from_now).draft?
  end
  test "published returns TRUE for a published post" do
    # binding.irb
    assert BlogPost.new(published_at: 1.year.ago).published?
  end
  test "published returns FALSE for a draft post" do
    # binding.irb
    refute BlogPost.new(published_at: nil).published?
  end
end
