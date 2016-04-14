module Adapters
  class TwitterConnection
    def query(query, language_code, result_type)
      $twitter.search(query, lang: language_code, result_type: result_type)
    end
  end
end
