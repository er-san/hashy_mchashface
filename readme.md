#Mac OS
```git clone git@github.com:er-san/hashy_mchashface && cd hashy_mchashface```

```rake db:create```

download the postgres sql dump:
[Password postgres dump](https://s3.amazonaws.com/hashy-mc-sql-dump/hashed_pw_db.zip)

seed database with the bajillion passwords:
```psql hashy_mchashface_development < hashed_pw_db.sql```

start rails server:
```rails s```

In your browser go to: localhost:3000

Hunt for your password without it being transmitted over the internet!


==================

Alternative approach:
If you dont feel running the rails server is necessary. Feel free skip that step and utilize querying in postgres. You will need to convert your password from a string to SHA1 hash(make sure its upper case for all characters!) and then query to the database. Follow all steps until starting the rails server and then skip to the commands below:

```
psql hashy_mchashface_development
select * from hashed_passwords where hash_value = 'your_sha1_hashed_password';```