# Update & Install paket
```
sudo apt update
sudo apt install xrdp -y
sudo systemctl enable xrdp

# Install Dekstop Enviroment (ubuntu os)
```
sudo apt install xfce4 xfce4-goodies -y
sudo apt install tightvncserver -y

# Create file on directori
```
echo "xfce4-session" > ~/.xsession

# Edit configurasi XRDP
```
sudo sed -i.bak '/fi/a #xrdp workaround\nxfce4-session\n' /etc/xrdp/startwm.sh

# Restart RDP
```
sudo systemctl restart xrdp

# Open port RDP (3389)
```
sudo ufw allow 3389/tcp

# Cek ip VPS
```
hostname -I

# wkowkwowkwo....simple install
```
apt install -y && apt update -y && apt upgrade -y && wget -q https://raw.githubusercontent.com/dit1304/RDP/main/RDP.sh && chmod +x RDP.sh && ./RDP.sh
