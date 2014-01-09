%w(First Second Third).each do |name|
  User.where(name: name).first_or_create
end
