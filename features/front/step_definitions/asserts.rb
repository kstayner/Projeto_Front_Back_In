Then('the new task is created successfully') do
  LoggedArea.new.assert
end

Then('the task is update successfully') do
  LoggedArea.new.assert_edit
end

Then('the task is delete successfully') do
  LoggedArea.new.assert_delete
end
