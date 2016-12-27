QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :blog do
    type BlogType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Blog.find(args[:id])
    }
  end

  field :author do
    type AuthorType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Author.find(args[:id]) # TODO: I'm not sure how to return this as a list
    }
  end
end
