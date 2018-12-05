class ApplicationController < ActionController::Base

  p "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  p "#{ENV.fetch("DB_NAME") { database_hoge }}"

end
