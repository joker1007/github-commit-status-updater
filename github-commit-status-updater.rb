require "bundler/setup"
require "octokit"
require "thor"

class GithubCommitStatusUpdater < Thor
  method_option :repo, :type => :string, :required => true, :aliases => "-r"
  method_option :sha1, :type => :string, :required => true, :aliases => "-s"
  method_option :username, :type => :string, :aliases => "-u"
  method_option :password, :type => :string, :aliases => "-p"
  desc "success", "commit status success"
  def success
    client.create_status(options.repo, options.sha1, "success")
    puts "status success"
  rescue Octokit::Error
    puts "update error"
  end

  method_option :repo, :type => :string, :required => true, :aliases => "-r"
  method_option :sha1, :type => :string, :required => true, :aliases => "-s"
  method_option :username, :type => :string, :aliases => "-u"
  method_option :password, :type => :string, :aliases => "-p"
  desc "failure", "commit status failure"
  def failure
    client.create_status(options.repo, options.sha1, "failure")
    puts "status failure"
  rescue Octokit::Error
    puts "update error"
  end

  private
  def client
    if options.username && options.password
      Octokit::Client.new(:login => options.username, :password => options.password)
    else
      Octokit::Client.new
    end
  end
end

GithubCommitStatusUpdater.start
