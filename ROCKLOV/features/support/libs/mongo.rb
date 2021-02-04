# frozen_string_literal: true

require 'mongo'

Mongo::Logger.logger = Logger.new('./logs/mongo.log')

class MongoDB
  def remove_user(_email)
    client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov')
    users = client[:users]
    users.delete_many(email: 'bruninha40_468@hotmail.com')
  end
end
