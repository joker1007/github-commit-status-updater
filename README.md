# Github::Commit::Status::Updater

## Installation

Add this line to your application's Gemfile:

    gem 'github-commit-status-updater', github: 'joker1007/github-commit-status-updater'

And then execute:

    $ bundle

## Usage

```
Commands:
  github-commit-status-updater error -r, --repo=REPO -s, --sha1=SHA1    # commit status error
  github-commit-status-updater failure -r, --repo=REPO -s, --sha1=SHA1  # commit status failure
  github-commit-status-updater help [COMMAND]                           # Describe available commands or one specific command
  github-commit-status-updater pending -r, --repo=REPO -s, --sha1=SHA1  # commit status pending
  github-commit-status-updater success -r, --repo=REPO -s, --sha1=SHA1  # commit status success
```

- format for `repo` is like 'joker1007/github-commit-status-updater' (owner/repo)
- `sha` must be a 40 character SHA1

And options for credential:

- `-u username`
- `-p password`
- `--oauth-token token`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
