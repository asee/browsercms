class Cms::Redirect < ActiveRecord::Base
  namespaces_table
  validates_presence_of :from_path, :to_path
  validates_uniqueness_of :from_path
end