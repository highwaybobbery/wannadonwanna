class Whosey < ActiveRecord::Base
  has_many :begs, class_name: 'Whatsit', foreign_key: 'beggar_id'
  has_many :fulfilments, class_name: 'Whatsit', foreign_key: 'fulfiller_id'
end
