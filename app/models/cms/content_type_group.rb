module Cms
class ContentTypeGroup < ActiveRecord::Base
  namespaces_table
  has_many :content_types, :order => "#{ContentType.table_name}.id", :class_name => 'Cms::ContentType'
end
end