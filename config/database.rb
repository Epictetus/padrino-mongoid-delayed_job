case Padrino.env
when :development
  host = 'localhost'
  port = Mongo::Connection::DEFAULT_PORT
  database_name = 'development'
  Mongoid.database = Mongo::Connection.new(host, port).db(database_name)
when :production
  uri = URI.parse(ENV['MONGOHQ_URL'])
  conn = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'])
  Mongoid.database = conn.db(uri.path.gsub(/^\//, ''))
end
