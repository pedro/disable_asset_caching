module ActionView
  module Helpers
    module AssetTagHelper
      alias :javascript_include_tag_with_caching :javascript_include_tag
      def javascript_include_tag(*sources)
        if sources.last.is_a?(::Hash)
          sources.last.stringify_keys!.delete('cache')
        end

        javascript_include_tag_with_caching(*sources)
      end
    end
  end
end
