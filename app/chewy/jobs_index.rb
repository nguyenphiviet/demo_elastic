class JobsIndex < Chewy::Index
  settings analysis: {
    analyzer: {
      my_ngram_analyzer: {
        tokenizer: "my_ngram_tokenizer"
      }
    },
    tokenizer: {
      my_ngram_tokenizer: {
          type: "nGram",
          token_chars: ["letter", "digit", "whitespace", "punctuation", "symbol"]
      }
    }
  }

  define_type Job.includes(:company) do
    field :name
    field :description
    field :company do
      field :name
      field :address
      field :email
    end
    field :salary, type: "integer"
  end
end
