echo -e "\e[33mInstalling Nginix Server\e[0m"
dnf install nginx -y

echo -e "\e[33mRemoving Nginix html content\e[0m"
rm -rf /usr/share/nginx/html/*

echo -e "\e[33mDownloading frondend content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

echo -e "\e[33mExtract frondend content\e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

## we need to copy the config file

echo -e "\e[33mSarting Nginix Server\e[0m"
systemctl enable nginx
systemctl restart nginx
