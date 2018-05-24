# frozen_string_literal: true

require 'test_helper'

class Resolvers::CreateLinkTest < ActiveSupport::TestCase
  def perform(args = {}, user)
    Resolvers::CreateLink.new.call(nil, args, current_user: user)
  end

  setup do
    @user = User.create! name: 'test', email: 'test@email.com', password: 'test'
  end

  test 'creating new link' do
    link = perform(
      { url: 'http://example.com',
        description: 'description' },
      @user
    )

    assert link.persisted?
    assert_equal link.description, 'description'
    assert_equal link.url, 'http://example.com'
  end
end
