# Crop Selenium Element

With this script you can cropping selenium screenshot around element.

## Getting Started ##

### Installing rbenv ###
To install rbenv in MAC OS X type:
```shell
brew install rbenv
```

Add to ~/.bash_profile:
```shell
eval "$(rbenv init -)"
```

To install rbenv in other system type:

```shell
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```
Optionally, try to compile dynamic bash extension to speed up rbenv. Don't worry if it fails; rbenv will still work normally:

```shell
cd ~/.rbenv && src/configure && make -C src
```

Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.

```shell
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
```

List all available versions:
```shell
rbenv install -l
```

Install a Ruby version:
```shell
rbenv install 2.3.1
```

Sets a local application-specific Ruby 2.3.1:
```shell
rbenv local 2.3.1
```

### Installing bundler ###
To install bundler type:
```shell
gem install bundler
```

### Installing gems ###
To install gems type:
```shell
bundle install
```

### Drivers: ###
Install and include in PATH
- [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)


### Type to execute ###
```shell
ruby crop_element.rb "url" "css_selector"
```

### Example ###
```shell
ruby crop_element.rb "https://www.google.com.br/" "#hplogo"
```

to crop only Google logo.
