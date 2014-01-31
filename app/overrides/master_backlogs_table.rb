Deface::Override.new(:virtual_path => "rb_stories/_story",
                     :name => "master_backlogs_table",
                     :insert_before => "div.status_id.editable.story_field",
                     :text => "<div class='due_date editable story_field'><% if story.due_date %><div>due date: <%= story.due_date %></div><% end %></div>")
