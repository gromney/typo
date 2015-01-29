Given /^the following articles exits$/ do |articles|
  Article.create!(articles.hashes)
end

Given /^the following comments exist$/ do |comments|
  Article.create!(comments.hashes)
end

Then /^article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should eq body
end

Then /^the article "(.*?)" should have author "(.*?)" or "(.*?)"$/ do |tittle, author1, author2|
  Article.find_by_title(title).author.should eq author1 or author2
end


