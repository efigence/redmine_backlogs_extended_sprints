require 'redmine'

Redmine::Plugin.register :redmine_backlogs_extended_sprints do
  name 'Redmine Backlogs Extended Sprints plugin'
  author 'Jacek Grzybowski'
  description "Allows to display due_date info for sprints in master backlogs"
  version '0.0.1'
  url 'http://github.com/efigence/redmine_backlogs_extended_sprints'
  author_url 'http://efigence.com'

  settings :default => {}, :partial => 'settings/extended_sprints_settings'
end
