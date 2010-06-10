require 'test_helper'

require 'action_controller'
require 'action_view'
require 'action_view/helpers'
require 'disable_asset_caching'

class DisableAssetCachingTest < ActiveSupport::TestCase
  include ActionView::Helpers

  test "doesn't change anything if cache is false" do
    assert_equal(
      javascript_src_tag("application.js", {}), 
      javascript_include_tag("application.js", :cache => false))
  end
  
  test "doesn't cache if cache is true" do
    assert_equal(
      javascript_src_tag("application.js", {}),
      javascript_include_tag("application.js", :cache => true))
  end
end
