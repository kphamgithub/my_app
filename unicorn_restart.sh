for i in `ps awx | grep unicorn | grep -v grep | awk '{print $1;}'`; do 
    kill $i 
done
unicorn_rails  -c /var/www/my_app/config/unicorn.rb -D
