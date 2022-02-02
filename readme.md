# :crossed_swords: KARTANUS-POST-INSTALL

<p align="justify">
  I constantly make changes to my operating system. About last months I have tried arch, manjaro, ubuntu, mint, and a few other distributions. So I decided to do   a "recovery" tool writted as a single script (bash). And this is what I got. I'd also like to mention that this script is under development so it may crash and   throw errors. I am a web developer so this is kind of a "new world" for me.
</p>

### SECTION 1: INSTALL

<p align="justify">
  To start running this script first of all you need to install git, and after that clone this repository in your home path (~/). Here you have the commands:
</p>
  
```bash
# Install git
sudo apt-get install git -y

# Clone this directory. You must be in ~/ path
cd ~/
git clone https://github.com/kartanusdev/kartanus-post-install

# In case you cloned the repository in a different directory, you can use this command:
mv kartanus-post-install ~/kartanus-post-install

# Move to directory and give permissions to execute
cd ~/kartanus-post-install
sudo chmod +777 install.sh

# Run
./install.sh
```

### SECTION 2: RUN THE SCRIPT

<p align="justify">
  Now in your terminal you will see a message asking for your username, if you don't remember, put the next command in your terminal:
</p>

```bash
# Let's check our username
echo $USER
```
<p align="justify">
  At this point the script is running and we just need to wait. In some cases, you will see a prompt asking about an installation confirmation. Just put "ok" or "y", it depends on the situation.
</p>

### SECTION 3: CUSTOMIZATION

<p align="justify">
Now after installing completely, it's time to modify our UI. For that, we need to open our applications and search for "Tweaks", if you have your system in spanish it could appear as "Retoques". We'll see something like this:
</p>

<img src="./gnome-tweaks1.png"></img>

<p align="justify">
Here we could see diferents options for customize our gnome appearance. By the way, inside this recovery tool I already installed my personal theme, that your welcome to use. PD: I recommend you to follow the example in the table below.
</p>

| Section          | File              |
| ---------------- | ----------------- |
| **Applications** | Parcatheme        |
| **Cursor**       | Parcacursor       |
| **Icons**        | WhiteSur-red-dark |

<p align="justify">
After all, to activate our shell customization, we just need to search "Extensions" or "Extensiones" and activate the user-themes extension (https://extensions.gnome.org/extension/19/user-themes/). PD: If installation doesn't work, please restart your machine!
</p>

<img src="./gnome-tweaks3.png"></img>

<p align="justify">
At this point we select "Parcatheme" on Shell layer inside "Appearance" section and we finish :)
</p>
