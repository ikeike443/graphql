AuthorType = GraphQL::ObjectType.define do
  name "Author"
  description "Author of Blogs"
  field :name, types.String
  field :blog do
    type BlogType
    resolve -> (obj, args, ctx) {
      Blog.find(obj.id)
    }
  end
end
