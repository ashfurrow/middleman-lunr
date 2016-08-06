require 'middleman-core'

require 'middleman-lunr/indexer'

class Lunr < ::Middleman::Extension
  helpers do
    def generate_search_index(opt_out = true, options = {})
      Middleman::Lunr::Indexer.new(self).generate(opt_out, {
        data: [:title],
        body: true
      }.merge(options))
    end
  end
end

Lunr.register(:lunr)
