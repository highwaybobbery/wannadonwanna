class Whatsit < ActiveRecord::Base
  belongs_to :beggar, class_name: 'Whosey', foreign_key: :beggar_id
  belongs_to :fulfiller, class_name: 'Whosey', foreign_key: :fulller_id
end
