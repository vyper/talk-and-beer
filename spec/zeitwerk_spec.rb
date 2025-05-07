# frozen_string_literal: true

require 'rails_helper'

# This test is to ensure that Zeitwerk is loading all folders and files.
#
describe 'Zeitwerk' do
  it { expect { Zeitwerk::Loader.eager_load_all }.not_to raise_error }
end
