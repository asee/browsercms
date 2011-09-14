require 'cms/extensions'
require 'cms/init'
require 'cms/routes'
require 'cms/caching'

#Load libraries that are included with CMS
require 'acts_as_list'
ActiveRecord::Base.send(:include, ActsAsList)

#Include CMS Behaviors
require 'cms/acts/content_block'
ActiveRecord::Base.send(:include, Cms::Acts::ContentBlock)
require 'cms/behaviors'

require 'cms/acts/cms_user'
ActiveRecord::Base.send(:include, Cms::Acts::CmsUser)

require 'bespin_area/init'
ActionView::bespin_default_options = {:settings => { :tabstop => 2 }, :syntax => 'html'}