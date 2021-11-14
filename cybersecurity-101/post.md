_Written on 2021-11-14_

To my friends and family who feel like staying secure in the Internet Age is an impossible task, this post will walk you through the most valuable things you can do to be tougher than the majority of the population.

Intro
-----
I said "tougher than the majority of the population," but why does the majority matter? It's like the old joke about two hikers being chased by a bear: one hiker starts putting on running shoes and the other goes, "Are you nuts? You can't outrun a bear." He responds, "I don't have to outrun the bear - only you." Most bad actors on the internet, just like the bear, are fairly lazy and will do 20% of the work to compromise the easiest 80% of the targets. Here we'll move you into that hardened 20% of targets.

Software Updates
----------------
Like you, I hate the "Download the latest update and restart?" popups on my computer and phone. However, staying up-to-date with the latest versions of the software you run is one of the biggest things you can do to reduce your risk. The reason: security bugs that allow bad actors to do nasty things are being discovered on a nearly daily basis for all software known to man. When knowledge of these bugs hits the tech community, software manufacturers scramble to protect their users and push a fixed version of their product. If users are constantly updating their software, they'll be protected as soon as the manufacturers' updates arrives. 

The problems begin when users ignore their software updates and run old versions. Information takes time to travel in criminal communities too, so if an announcement about a security bug in MacOS is issued at 10 AM and Apple pushes a fix by 6 PM then criminals have only had 8 hours to leverage the bug before Mac users who regularly update their OS are no longer vulnerable. As time goes by though, the news spreads and increasing numbers of bad guys will include the exploit as part of their standard hacking toolkit. If you're running an old version of MacOS before the fix, you're now easy prey.

**Action Items**
* Update your operating system & computer software whenever it's available
* Turn on auto-updates for the applications on your computer
* Update all the apps on your phone
* Turn on auto-updates for the apps on your phone

Password Managers
-----------------
If you're like most people, you have 2-3 passwords that you use across your email, social media, Netflix, Amazon, banking, hotel & airline logins, and so on. You simply remember these passwords, and begrudgingly change them when you're forced to. There are multiple problems with this "password promiscuity" approach:

* Hackers know that most people reuse passwords, so when they compromise companies who don't give a shit about security like [Marriott](https://blog.dashlane.com/marriott-hack/) or [Equifax](https://www.ftc.gov/enforcement/cases-proceedings/refunds/equifax-data-breach-settlement), they immediately try the information they found on other popular sites like Google, Amazon, Netflix, Facebook, Instagram, etc. If you're reusing passwords, your the security of your accounts is only as strong as the _weakest_ site.
* Because your passwords need to be memorable, they are likely short and contain English words (maybe with a few numbers). Unfortunately, short passwords with real words are quite easy to crack ([explanation for the nerdy and the curious](https://en.wikipedia.org/wiki/Rainbow_table)).
* You almost definitely don't remember all the sites you've signed up for, and you almost definitely don't follow tech news to stay updated on what companies have been compromised. This means that if a breach occurs, you're reliant on the company to send a contrite "We're sorry, we've been compromised; please change your password" email (which seems to conveniently get delayed until the company has a PR campaign in place).
* When you do get those change-your-password prompts, you now have to invent a new password and remember it going forward (Post-Its on the monitor might sound familiar).
* Because of all those password changes over the years, you likely have forgotten the username/password combos to old sites you haven't used in a while.

The good news: all these problems go away with a simple tool called a password manager. A password manager's function is twofold: first, it will store all your username/password logins for you in a database that is encrypted with a "master password" so that [not even the password manager company gets to see them](https://blog.1password.com/what-if-1password-gets-hacked/). This frees you from needing to remember anything but the master password, and gives you a record of exactly what credentials you used for that site you haven't touched in 3 years. Second, when signing up for new sites, a password manager will provide a secure password generator that allows you to create long passwords of random text like `^19@VjCwvYrs1@W88bT9HBJWn@2aK4` (which are exceedingly hard to break). All your passwords are stored in the database, so you get a damn robust password without any additional load on your memory. Better yet, each site will have a unique random password so Marriott's ineptitude won't compromise your other accounts (e.g. your bank!).

If you don't already have a password manager, I recommend using one called "1Password". It's the best balance of ease-of-use and security that I've found, and at $3/month is a positive steal for keeping your accounts safe. It also comes with a plugin for your browser that can auto-fill login forms on websites, helps in sharing passwords among a family (e.g. the home wifi password), and can even proactively identify your login credentials that have been exposed in security breaches. (Disclaimer: I have no incentive to advertise 1Password; it's simply the best product on the market in my opinion.)

A closing note: most password managers offer a "Secure Note" feature where you can store arbitrary information that's not a website login. I use these to store things like IRS e-file PINs, combos to safes, and health insurance & credit card information. I've trained the muscle of, "If it's important and private, it goes in my password manager," which proves invaluable when you need it (e.g. my credit card was eaten by an ATM while travelling, and I was able to quickly get customer service because I had the card number and support phone number stored in my password manager).

**Action Items**
1. Sign up for 1Password by:
    1. [Purchasing a plan on their website](https://1password.com/sign-up/)
    1. Generating a _long_ (20+ characters) master password (**DO NOT LOSE THIS!**)
    1. Storing a copy of your master password in a secure location with someone you trust in case you ever get amnesia
1. [Download the 1Password app for your computer](https://1password.com/downloads)
1. [Download the extension for your browser](https://support.1password.com/getting-started-browser/)
1. Download the 1Password app from your phone's app store
1. Every time you:
    * Log in to a website, save the password in 1Password
    * Sign up for a new website, generate a password through the 1Password browser extension
1. After you've added several passwords, [open the "Watchtower" section in the sidebar of your 1Password app on your computer and resolve any issues](https://support.1password.com/watchtower/#use-watchtower-in-the-1password-apps)

2-Factor Authentication
-----------------------
2-factor authentication ("2FA" for short) is commonplace nowadays, but most 2FA is text-based or email-based and is therefore garbage. The problem: if I'm a developer building a website, I have a million and one things I need to do to get my website ready for launch. 2FA is considered blanket "good" and sending texts or emails is very easy to do in code, so I slap on those 6-digit codes to your phone or email and move on to other things. Unfortunately, as mentioned above, most people reuse passwords so it's fairly easy to compromise the layperson's email account, and [intercepting 2FA codes sent to your phone number isn't so difficult thanks to the lax security of telecom companies](https://www.phishlabs.com/blog/sim-swap-attacks-two-factor-authentication-obsolete/). This means that, in practice, the supposedly-secure 2FA is little stronger than just a username & password.

The type of 2FA that isn't garbage is the one that requires you to own a physical device. These devices come in different forms - [physical tokens that show numbers you have to enter](https://assets.infosecurity-magazine.com/content/float/61e15d2b-465a-472c-9f0e-16091b40beef.jpg), [USB dongles that must be plugged into your computer](https://www.yubico.com/products/yubikey-5-overview/), and even [phone applications that simulate the physical tokens showing you numbers](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en&gl=US) - but all cannot be accessed by someone without the physical presence of the device. This is what you want for your most secure accounts (e.g. email and financials).

Since you're just trying to get to Good Enough security, I recommend using an authenticator app on your phone. The way these work with a website:

1. The website that you're setting up 2FA for will create random text called a "seed" that will be combined with the current date & time to generate a 6-digit numerical code.
1. The website saves your seed in a database, and you save the seed in your authenticator app (your equivalent of the website's database).
1. When logging in, after you provide the correct username & password to the website, the website combines the seed in its database with the current date & time to know what 6-digit code to expect.
1. To prove that you're the owner of the account, you look at the authenticator app on your phone (which will also have combined the seed with the current date & time) and enter the same 6-digit code.
1. The website lets you in.

There is one very important thing to note: if you lose your phone, **you will have lost access to your seed and therefore lost access to your account!** To guard against this, **you should store the seed text in your password manager whenever you're setting up 2-factor authentication for an account.** This will allow you to reinitialize your authenticator app in case you need to get a new phone.

**Action Items**
1. If:
    * You're on Android, download [Google Authenticator](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en&gl=US)
    * You're on iOS, download [Authy](https://apps.apple.com/us/app/authy/id494168017)
1. For each of your secure accounts (email, financials, etc.):
    1. Log in to your account using your browser
    1. Go to "Settings" and switch on 2FA (copying any backup recovery codes into your password manager)
    1. **VERY IMPORTANT: Do NOT use the QR code, and instead copy the seed phrase into your password manager!!!** (I like to call these "XXXXXX 2FA Seed" in my password manager)
    1. From the password manager app on your phone, copy the seed phrase you saved
    1. Open the authenticator app on your phone and choose "New"
    1. Paste in the seed phrase that you copied from your password manager
    1. The authenticator app will now be generating 6-digit codes, so plug the latest one in to the website to confirm that the website and your authenticator app are in sync
1. Optionally, enable 2FA for other websites you'd like to have an extra layer of security

Men in the Middle, HTTPS, and Public Wifi
-----------------------------------------
There is a cybersecurity attack known as the "man-in-the-middle" (MITM) attack. The way it works, from a real college prank:

1. My roommate loves Back To The Future, and won't stop talking about it.
1. I have my computer tell his computer that mine is the network router (i.e, the gateway to the outside internet).
1. His computer thinks my computer is the router and start sending his communications (destined for the open internet) to my computer, which my computer forwards to the real router.
1. His computer doesn't notice anything different, but his network traffic is now flowing through my computer.
1. I now instruct my computer to start doing nasty things to his network traffic - spying on it, and replacing any images on `facebook.com` with [an image of Marty & Doc](https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/v1555927672/shape/mentalfloss/marty-doc_12.jpg?itok=rnpVEkKw).
1. Confused noises start emanating from his room as all his Facebook photos go Back To The Future.

This attack has been around for a long time, and we've developed a defense against it that you've seen: HTTPS. Regular HTTP connections (websites that start with `http://`, no `s` at the end) are vulnerable to MITM attacks. HTTPS connections, however, both a) encrypt the data between the client and the server (so no spying) and b) bear a stamp of approval from the website so that your computer will know if the contents it receives have been tampered with (because they flowed through a bad guy's computer). Unfortunately, many websites don't implement HTTPS properly and so simply connecting via `https://` isn't enough.

For technical reasons, this attack is only doable against computers connected to the same router at the present moment. This means that your home network is safe unless your child has a penchant for computer science, and public wifi networks become increasingly risky with a) the number of people on the network and b) the sophistication of the people on the network. Your corner coffeeshop might be okay, but [city and airport wifi should be avoided like the plague](https://www.forbes.com/sites/suzannerowankelleher/2019/09/24/why-you-should-never-use-free-airport-wi-fi/?sh=2689d9a97d3a) (well-funded government actors have almost definitely set up tiny devices in hidden corners to record all traffic, and maybe even inject malicious software).

Question: if HTTPS only partially helps, what's the real fix? Answer: a virtual private network (VPN). You can think of a VPN like an ironclad tube between where you are and somewhere else, that all your network traffic passes through. If your VPN is company-provided, the other end of that protected tunnel is inside your company's internal network. If you're using a VPN-as-a-service like ExpressVPN or NordVPN, the other end of that tunnel is wherever you choose when you create the VPN connection. This keeps your traffic safe, even if it's passing through an extra-risky network like airport wifi.

**Action Items**
* Always connect to websites using `https://`
* Immediately close any website that has the "This website is insecure!" message, as it's an indication that a MITM attack _may_ be happening (not guaranteed though, so no need to panic)
* If you don't have a VPN:
    * Do not enter any private/sensitive information on public networks
    * Be cautious connecting to small public networks
    * **Absolutely do not connect to large public networks (city, airport, etc.)**

Conclusion
----------
If you follow the above guidance, you'll have elevated your security posture beyond the vast majority of people on the internet. While it's impossible to achieve 100% security, you'll have made yourself such a tough target that all but the most driven bad actors (i.e. government hackers with a purpose) will look for easier prey. Enjoy your running shoes.
