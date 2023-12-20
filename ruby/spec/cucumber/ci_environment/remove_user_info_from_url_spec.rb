# frozen_string_literal: true

require 'cucumber/ci_environment'

describe Cucumber::CiEnvironment, '#remove_user_info_from_url' do
  it 'returns nil for nil' do
    expect(described_class.remove_userinfo_from_url(nil)).to be_nil
  end

  it 'returns empty string for empty string' do
    expect(described_class.remove_userinfo_from_url('')).to eq('')
  end

  it 'leaves the data intact when no sensitive information is detected' do
    expect(described_class.remove_userinfo_from_url('pretty safe')).to eq('pretty safe')
  end

  context 'with URLs' do
    it 'leaves intact when no password is found' do
      expect(described_class.remove_userinfo_from_url('https://example.com/git/repo.git')).to eq('https://example.com/git/repo.git')
    end

    it 'removes credentials when found' do
      expect(described_class.remove_userinfo_from_url('http://login@example.com/git/repo.git')).to eq('http://example.com/git/repo.git')
    end

    it 'removes credentials and passwords when found' do
      expect(described_class.remove_userinfo_from_url('ssh://login:password@example.com/git/repo.git')).to eq('ssh://example.com/git/repo.git')
    end
  end
end
