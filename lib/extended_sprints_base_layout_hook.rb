class ExtendedSprintsBaseLayoutHook < Redmine::Hook::ViewListener
  render_on(:view_layouts_base_html_head, :partial => 'settings/additional_styles', :layout => false)
end
