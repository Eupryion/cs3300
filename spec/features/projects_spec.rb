
require 'rails_helper'

RSpec.feature "Projects", type: :feature do
  user = FactoryBot.create
  context "Create new project" do
    before(:each) do
      Warden.test_mode!
      login_as(user, :scope => :user)
      visit new_project_path
      within("form") do
        fill_in "Title", with: "Test title"
      end
    end

    scenario "should be successful" do
      fill_in "Description", with: "Test description"
      click_button "Create Project"
      expect(page).to have_content("Project was successfully created")
    end

    scenario "should fail" do
      click_button "Create Project"
      expect(page).to have_content("Description can't be blank")
    end
  end

  context "Update project" do
    let(:project) { Project.create(title: "Test title", description: "Test content") }
    before(:each) do
      visit edit_project_path(project)
    end

    scenario "should be successful" do
      within("form") do
        fill_in "Description", with: "New description content"
      end
      click_button "Update Project"
      expect(page).to have_content("Project was successfully updated")
    end

    scenario "should fail" do
      within("form") do
        fill_in "Description", with: ""
      end
      click_button "Update Project"
      expect(page).to have_content("Description can't be blank")
    end
  end

  context "Remove existing project" do
    let!(:project) { Project.create(title: "Test title", description: "Test content") }
    before(:each) do
      visit projects_path
    end

    scenario "new project" do
      click_link "New project"
      expect(page).to have_content("New project")
    end

    scenario "back project" do
      click_link "Show this project"
      click_link "Back to projects"
      expect(page).to have_content("Projects")
    end

    scenario "remove project" do
      visit projects_path
      click_link "Show this project"
      click_button "Destroy this project"
      expect(page).to have_content("Project was successfully destroyed")
      expect(Project.count).to eq(0)
    end
  end
end