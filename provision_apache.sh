apt-get install apache2 -y

rm /etc/apache2/sites-available/000-default.conf
rm /etc/apache2/sites-enabled/000-default.conf
ln -s /vagrant/do_ex1_site /etc/apache2/sites-available/vagrant.conf
ln -s /etc/apache2/sites-available/vagrant.conf /etc/apache2/sites-enabled/vagrant.conf



service apache2 reload
