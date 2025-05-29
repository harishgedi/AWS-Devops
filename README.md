# AWS-Devops
All the interesting aws-devops usecases learnt experimented logged errors and  resolved them in my daily routine  and more to come 
# 🚀 AWS-DevOps Daily Tasks

Welcome! This is your comprehensive **AWS-DevOps guide**, featuring five essential deployment projects. Each one includes real-world steps, common issues, fixes, and pro tips to get you from zero to hero on AWS EC2!

---

## 🌟 Table of Contents

- [1️⃣ Troubleshooting SSH Connections to AWS EC2](#1-troubleshooting-ssh-connections-to-aws-ec2)  
- [2️⃣ Deploying Nginx and a Static Website on EC2](#2-deploying-nginx-and-a-static-website-on-ec2)  
- [3️⃣ Apache Tomcat Deployment on EC2](#3-apache-tomcat-deployment-on-ec2)  
- [4️⃣ Using wget for DevOps Automation](#4-using-wget-for-devops-automation)  

---

## 1️⃣ Troubleshooting SSH Connections to AWS EC2

**Introduction**  
SSH is essential for managing EC2 instances, but connection issues can arise. Here’s how to troubleshoot common errors and securely connect.

### Common Errors & Fixes

- **Permissions too open:**  
  ```bash
  chmod 400 ~/your-key.pem
  ```

- **Connection timed out:**  
  ✅ Check security group inbound rules (port 22 open to your IP).

- **File not found:**  
  ✅ Verify file location with:  
  ```bash
  ls -la
  ```

### 3 Methods to Connect

1️⃣ Terminal (Linux/MacOS)  
2️⃣ Git Bash (Windows)  
3️⃣ SSH Client (PuTTY or MobaXterm)  
✅ MobaXterm can use `.pem` directly!

### Switch to Root User  
```bash
sudo su -
```

🔗 **References:**  
- [AWS EC2 SSH Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)

---

## 2️⃣ Deploying Nginx and a Static Website on EC2

**Introduction**  
Nginx is a popular, lightweight web server ideal for serving static sites.

### Install and Configure Nginx

```bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

### View the Default Page  
Visit: `http://<EC2-public-IP>`

### Deploy Your Static Website

1️⃣ Remove default page:  
```bash
sudo rm /var/www/html/index.nginx-debian.html
```

2️⃣ Create or upload `index.html`:  
```bash
echo "<h1>Hello from Nginx on EC2!</h1>" | sudo tee /var/www/html/index.html
```

3️⃣ Restart Nginx:  
```bash
sudo systemctl restart nginx
```

### Troubleshooting

- **Port 80 blocked:** Open in security group.
- **Permission issues:** Fix ownership with `chown` or `chmod`.

### Bonus: SSL with Let’s Encrypt  
```bash
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx
```

### Recommended Resource  
🎥 **[Nginx Tutorial by TechWorld with Nana](https://www.youtube.com/watch?v=6dMrYkQQ1Eo)**

---

## 3️⃣ Apache Tomcat Deployment on EC2

**Introduction**  
Tomcat is great for Java web apps. Let’s set it up!

### Install Java and Tomcat

```bash
sudo yum install java-1.8.0-openjdk -y
cd /opt
sudo wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.7/bin/apache-tomcat-10.1.7.tar.gz
sudo tar -xvf apache-tomcat-10.1.7.tar.gz
sudo chown -R ec2-user:ec2-user apache-tomcat-10.1.7
```

### Start Tomcat

```bash
cd apache-tomcat-10.1.7/bin
sudo ./startup.sh
```

### Troubleshooting

- **Port 8080 issues:** Check security group.
- **Permission issues:**  
  ```bash
  sudo chown -R ec2-user logs
  ```

### Access Tomcat  
Visit: `http://<EC2-public-IP>:8080`

---

## 4️⃣ Using wget for DevOps Automation

**Introduction**  
`wget` is a powerful CLI tool for downloading files – a must for DevOps engineers.

### Common Use Cases

✅ Download a file:  
```bash
wget http://example.com/file.zip
```

✅ Custom file name:  
```bash
wget -O custom.zip http://example.com/file.zip
```

✅ Resume download:  
```bash
wget -c http://example.com/largefile.zip
```

✅ Mirror a website:  
```bash
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent http://example.com
```

✅ Background download:  
```bash
wget -b http://example.com/file.zip
```

🔗 **Reference:**  
- [wget Manual](https://www.gnu.org/software/wget/manual/wget.html)

---

## 🎯 Final Thoughts

This guide covers the most critical AWS-DevOps deployment tasks:  
✅ Troubleshooting SSH  
✅ Nginx and static site hosting  
✅ Apache Tomcat for Java apps  
✅ wget for automation  
✅ GUI tools to make your workflow easier

If you spot any errors or want to chat more about **DevOps** over a cup of tea, feel free to comment or connect with me directly. Let’s build the future together! ☕️✨

---

**Suggested Tags:**  
`AWS`, `DevOps`, `Nginx`, `Tomcat`, `EC2`, `Cloud`, `Linux`, `Server Management`, `Automation`


