# Usage

Info: Heroku is not supported, Use AWS EC2 (1 Year Free), G Cloud (300$ for 1 Year Free), MS Azure (30 Days Free).

#Installation on [AWS Cloud](https://aws.amazon.com/ec2/)

* [Check Out the Video](#resources)
* Select an Ubuntu 18.xx Server Image
* Use [Putty](https://www.putty.org/) or Other SSh Client to Login using SSH
* Follow the below commands one by one.

```
  sudo apt-get update && sudo apt-get upgrade
  sudo apt-get install linux-image-extra-virtual
```

```
  sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
```

```
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

```
  sudo apt-key fingerprint 0EBFCD88
```

```
  sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"
```

```
  sudo apt-get update
```

```
  sudo apt-get install docker-ce
```

```
  sudo docker run hello-world
```

* You'll see a Line saying Hello World that means everything you've done worked till now

```
  sudo usermod -a -G docker $USER
```

* Replace `$USER` with your username, it maybe be `ubuntu` by default.
* Close Putty/SSH Client and Login again.
* For Installation

```
  docker run --name ct -d -p 80:3000 \
    --restart always \
    -e GOOGLE_CLIENT_ID='***' -e GOOGLE_CLIENT_SECRET='***' -e GOOGLE_REDIRECT_URL='***/oauthCallback' \
    betsbest/betscloud:latest node server/server.js
```

Fill `***` with appropriate values from Google Developer Console.

* You can also Delete the Container using below if needed.

```
  sudo docker stop $(docker ps -a -q)
  sudo docker rm $(docker ps -a -q)
```

* You can also remove pulled image to pull latest image again.

```
  sudo docker images -a
  
  sudo docker rmi Image Image2
```

Replace Image with Docker Image ID (Multiple Supported)

# Install on AWS Lightsail

* This will install and deploy (GDrive won't work)

```
bash <(curl -s https://raw.githubusercontent.com/betsbest/betscloud/master/aws-lightsail-install.sh)
```

* This will install requirements only (edit next command with required details)

```
bash <(curl -s https://raw.githubusercontent.com/betsbest/betscloud/master/aws-lightsail-install-advanced.sh)
```

* Fill *** with required details first

```
sudo docker run --name ct -d -p 80:3000 --restart always -e GOOGLE_CLIENT_ID='***' -e GOOGLE_CLIENT_SECRET='***' -e GOOGLE_REDIRECT_URL='***/oauthCallback' betsbest/betscloud node server/server.js
```

# Get Google_Client_ID and Secret

* Open [Google Dev Credentials Site](https://console.developers.google.com/apis/credentials).
* Create a Project, name as you like.
* Enable [Drive API](https://console.developers.google.com/apis/library/drive.googleapis.com)
* In [Credentials Page](https://console.developers.google.com/apis/credentials) Click `Create Credentials` and then Click `OAuth Client ID`.
* Select Web Application.
* In `Authorized JavaScript origins` enter your domain name or IP whichever you are using for Bhadoo Cloud.
* In `Authorized redirect URIs` enter your domain name or IP with `/oauthCallback` at last.
* Use http:// or https:// as available.
* If you are using Cloudflare for website use https:// and Set Flexible HTTPS in Cloudflare.
* Copy your details and use above.
* `GOOGLE_REDIRECT_URL` is same as `Authorized redirect URIs`

# Resources

* [Video: How to install on Amazon Web Services (AWS)](https://youtu.be/yhsQU6uXNMA)

* [Video: How to use to Upload Torrents or Files to Google Drive](https://youtu.be/ynRkZ1OaQSQ)

* [Video: How to remove Docker Images from AWS Server to Fetch Latest Images](https://youtu.be/SGrB0oo8F_4)

* [Proxy Server](https://github.com/ParveenBhadooOfficial/PHP-Web-Proxy)


Build from [github.com/Mrigank11/embetacloud](https://github.com/Mrigank11/embetacloud) and [github.com/jpillora/cloud-torrent](https://github.com/jpillora/cloud-torrent)

Original Source From [Bhadoo-Cloud](github.com/ParveenBhadooOfficial/Bhadoo-Cloud)

License [GPLv3](https://github.com/ParveenBhadooOfficial/BhadooCloud/blob/master/LICENSE)
