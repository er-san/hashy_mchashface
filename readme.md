### Mac OS
Follow steps are input into the terminal command line.

Pull down this repository:
```git clone git@github.com:er-san/hashy_mchashface && cd hashy_mchashface```

Create empty database:
```rake db:create```

download the postgres sql dump:
[Password postgres dump](https://s3.amazonaws.com/hashy-mc-sql-dump/hashed_pw_db.zip)

unzip the file

seed database with the bajillion passwords:
```psql hashy_mchashface_development < path/to/hashed_pw_db```

start rails server:
```rails s```

In your browser URL path:
```localhost:3000```

Hunt for your password without it being transmitted over the internet!

========================================================================

Alternative approach:
If you dont feel running the rails server is necessary. Feel free skip that step and utilize querying in postgres. You will need to convert your password from a string to SHA1 hash(make sure its **__upper case__** for all characters!) and then query to the database. Follow all steps until starting the rails server and then skip to the commands below:

```
(using the same naming convention as rails in case you wish to run the server)
createdb hashy_mchashface_development;
psql hashy_mchashface_development
SELECT * FROM hashed_passwords WHERE hash_value = 'your_sha1_hashed_password';```