require 'spec_helper'
require_relative 'support/matchers'

describe 'docker::cleanup_cron' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end

  it 'Creates a weekly cron to clean up containers on Sunday at 1 AM' do
    expect(chef_run).to create_cron('docker_cleanup_containers').with(minute: '0', hour: '1', weekday: '0')
  end

  it 'Creates a weekly cron to clean up images on Sunday at 2 AM' do
    expect(chef_run).to create_cron('docker_cleanup_images').with(minute: '0', hour: '2', weekday: '0')
  end
end
