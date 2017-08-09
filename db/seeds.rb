File.open('pwned-passwords-1.0.txt','r').each { |line| HashedPassword.create(hash_value: line) }
File.open('pwned-passwords-update-1.txt','r').each { |line| HashedPassword.create(hash_value: line) }
File.open('pwned-passwords-update-2.txt','r').each { |line| HashedPassword.create(hash_value: line) }