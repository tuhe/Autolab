# Tue: Install steps of CMU Autolab

- fix issue with openssl and ruby 2.6:  https://github.com/rbenv/ruby-build/discussions/1940

- startup torque
```
cd ~/Torque/ & source bin/activate & redis-server & python3 restful_tango/server.py 3000 & python jobManager.py
```

- startup autolab:
```
cd ~/Autolab & bundle exec rails s -p 8000
```

- startup localtunnel:
```
lt --port 8000 --subdomain="autolab-dtu"
```

In file `Autolab/config/environments/development.py`
```
  config.action_mailer.default_url_options = {protocol: 'http', host: 'autolab-dtu.loca.lt' }

  config.action_mailer.smtp_settings = {
          address:              'mail.dtu.dk',
          port:                 587,
          enable_starttls_auto: true,
          authentication:       'login',
          user_name:            'tuhe@dtu.dk',
          password:             'PASSWORD GOES HERE',
          domain:               'mail.dtu.dk',
  }
  ActionMailer::Base.default :from => 'tuhe@dtu.dk'
```
