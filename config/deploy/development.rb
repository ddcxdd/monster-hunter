set :stage, :development
role :app, %w{mocorio@153.126.185.155}
role :web, %w{mocorio@153.126.185.155}
role :db, %w{mocorio@153.126.185.155}

server '153.126.185.155',
user: 'mocorio',
roles: %w{web app db},
ssh_options: {
 auth_methods: %w(password),
 password: 'famima00',
 keys: %w(/Users/kenta/.ssh/monhun_rsa),
 port:  "1549"


}