# frozen_string_literal: true

require "rails_helper"

describe "Organization", type: :system do
  include_context "with ephemerable participation"

  let(:admin) { create(:admin) }

  before do
    Decidim::Verifications.clear_workflows
    register_workflows
  end

  context "when authenticated as a system admin" do
    before do
      login_as(admin, scope: :admin)
    end

    describe "when editing an organization" do
      let!(:organization) { create(:organization) }

      before do
        visit decidim_system.root_path
        click_link "Organizations"
        within "table tbody" do
          first("tr").click_link("Edit")
        end
      end

      it "updates available authorizations to allow ephemeral participation" do
        check("organization_available_authorizations_dummy_authorization_handler_enabled")

        choose("organization_available_authorizations_dummy_authorization_handler_allow_ephemeral_participation")

        find("*[type=submit]").click

        expect(page).to have_css("div.flash.success")
      end
    end
  end
end
