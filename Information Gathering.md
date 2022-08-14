# Information Gathering

Information gathering is one of the main components during an engagement.
Even if you’re not going to conduct a social engineering attack, this phase will
give you a different angle about the domain/company that you’re targeting.
The web is always hiding some secrets such as compromised passwords, confi-
dential data, etc.

Passive footprinting, Passive information gathering, OSINT(Open source intelligence) -> collecting data about your target using publicly available sources. 

Looking for:

* Company subdomains
* Websites
* Public IP addresses (including the one on the cloud AWS/Azure)
* Leaked internal IP addresses
* Public DNS records (MX mail records, etc.)
* Leaked credentials (mainly on GitHub or Pastebin)
* Previous breaches
* Significant business change (e.g., acquisitions)
* Business financial information (this can reveal a secret partner)
* Business phone numbers (for social engineering)
* Employee public information (for social engineering)
* A company presence on social media (e.g., LinkedIn)

## Search engines
### Shodan (shodan.io)
port:2375 product: "Docker" (Apache)
Org: "Target company name."
Country:CA
City:Montreal
Hostname: "domain-name.com"
Server: "Linux"
http.title:“Dashboard”
www.shodan.io/explore

* Google (Google hacking db, Google dorks)
site: -> This specific query will allow you to look for all the web pages and sites associated with your target domain name (this
query will reveal subdomains as well)

site:github.com [keywords]

You’ll discover leaked information on GitHub during an engagement.Developers tend to use GitHub without understanding the consequences, and
you, as a professional in this field, can take advantage of this flaw.

www.exploit-db.com/google-hacking-database

## Information gathering tools
### whois
Whois could reveal as public information:
* Registrant name
* Contact phone number
* E-mail address
* Entity physical address
* Domain expiry date
* NS (Name Servers) servers
### theHarvester
Helps find e-mail addresses to use in phishing and/or social engineering attacks. It's using common search engines and social webs.

$theHarvester -d [domain] -b [online sources] -s

* -s is to search on the Shodan web engine.

### DMitry “deepmagic information gathering tool”
-w : Retrieve records from Netcraft.com about the target.
-n : Look for subdomains.
-s : Search for e-mail addresses.
-e : Scan for TCP open port (this is not passive).

dmitry -wnse [domain-name.com]

### Maltego (paid tool)
Great UI tool for passive information gathering. If you are pro, pay for a license.

#### Transform Hub
By default, most of these data sources are not installed; you have to click each
of the ones that you want to install. There are multiple types of data sources
#### Creating a graph
The graph is the centerpiece of Maltego.
* Select entity (a person, a company, a domain name, etc.)
* All Transforms, scans, etc.

The options are endless here: you can choose every entity type and right-click
it to visualize the different kinds of information that you can query from the
internet.

Some security folks use free tools like recon-ng that do a job similar to the one
executed in Maltego. (recon-ng is a Python scanner for information gathering
that uses web API services to fetch its data.) For educational purposes, it is not
harmful to try these free tools.

## About paid apps
However, if an organization is counting on your work, then money should not be an obstacle, and it is, in this case, recommended
to take advantage of the yearly license. This is applicable not only for Maltego,
but for most of the security tools out there (e.g., Nessus, Burp Suite Pro, etc.).
If you want to show professional results, you must pay the price accordingly
to get the job done correctly.