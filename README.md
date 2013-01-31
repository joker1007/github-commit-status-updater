# Github::Commit::Status::Updater

## Installation

Add this line to your application's Gemfile:

    gem 'github-commit-status-updater', github: 'joker1007/github-commit-status-updater'

And then execute:

    $ bundle

## Usage

```
Tasks:
  github-commit-status-updater failure -r, --repo=REPO -s, --sha1=SHA1  # commit status failure
  github-commit-status-updater help [TASK]                              # Describe available tasks or one specific task
  github-commit-status-updater success -r, --repo=REPO -s, --sha1=SHA1  # commit status success

```

And `-u username` and `-p password` options

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
