require 'redmine'

# Little hack for deface in redmine:
# - redmine plugins are not railties nor engines, so deface overrides are not detected automatically
# - deface doesn't support direct loading anymore ; it unloads everything at boot so that reload in dev works
# - hack consists in adding "app/overrides" path of the plugin in Redmine's main #paths
Rails.application.paths["app/overrides"] ||= []
Rails.application.paths["app/overrides"] << File.expand_path("../app/overrides", __FILE__)

Redmine::Plugin.register :redmine_backlogs_extended_sprints do
  name 'Redmine Backlogs Extended Sprints plugin'
  author 'Jacek Grzybowski'
  description "Allows to display due_date info for sprints in master backlogs"
  version '0.0.1'
  url 'http://github.com/efigence/redmine_backlogs_extended_sprints'
  author_url 'http://efigence.com'

  settings :default => {}, :partial => 'settings/extended_sprints_settings'
end
