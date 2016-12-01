When running a migration on production, the following files need to be made writable and then reverted back to readable:

```
/var/canvas$ sudo chmod 777 /var/canvas/config/redis.yml
/var/canvas$ sudo chmod 777 config/cache_store.yml

RAILS_ENV=production bundle exec rake db:migrate

/var/canvas$ sudo chmod 400 /var/canvas/config/redis.yml
/var/canvas$ sudo chmod 400 config/cache_store.yml
```