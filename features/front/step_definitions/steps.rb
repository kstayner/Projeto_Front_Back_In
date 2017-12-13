Given('I have logged in website demosuiteondemandcom') do
  VisitSite.new.visit_site
  Home.new.login
end

When('I create a new task') do
  LoggedArea.new.create_task
end

When('I edit a task') do
  LoggedArea.new.action_edit
end

When('I delete a task') do
  LoggedArea.new.action_delete
  LoggedArea.new.alert_accept
end
