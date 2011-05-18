#After hours of pain in my head, I found the solution: 
#
#http://redmine.ruby-lang.org/issues/show/4300 
#
#I reinstalled my ruby environment and that was the reason, why rubygems was 
#updated to 1.5.0. Rubygems 1.5.0 changes the yaml parsing default from syck 
#to psych and psych doesn't like the ":<<" in yaml files. 
#
#Add this to the beginning of your config/environment.rb, if you have libyaml 
#installed (default with rvm ruby 1.9.2): 
#require 'yaml' 
#YAML::ENGINE.yamler= 'syck' 
#
#Now, everything works fine. 
#
#Regards, 
#sewid
#http://groups.google.com/group/mongoid/browse_thread/thread/9213a17a73d3c422/911f0811bf5b9d79
# Load the rails application
require 'yaml'
YAML::ENGINE.yamler= 'syck'
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Blog::Application.initialize!
