Cybersecurity 101
=================
_Written on 2021-11-14_

To my friends and family who feel like staying secure in the Internet Age is an impossible task, this post will walk you through the things you need to do be more secure than the majority of the population. Why does the majority matter? It's like the old joke about two hikers being chased by a bear: one hiker starts putting on running shoes and the other goes, "Are you nuts? You can't outrun a bear." He responds, "I don't have to outrun the bear - only you." Bad actors on the internet, just like the bear, are fairly lazy and will do 20% of the work to compromise the easiest 80% of the targets. Here we'll move you into that 20% of hardened targets.

Software Updates
----------------
Like you, I hate the "Download the latest update and restart?" popups on my computer and phone. However, staying up-to-date with the latest versions of the software you run is one of the biggest things you can do to reduce your risk. The reason: security bugs that allow bad actors to do nasty things are being discovered on a nearly daily basis for pretty much every software known to man. When knowledge of these bugs hits the tech community, software manufacturers scramble to protect their users and push a fixed version of their product. If users are constantly updating their software, they'll be protected as soon as the manufacturers' updates arrives. 

The problems begin when users ignore their software updates and run old versions. Information takes time to travel in criminal communities too, so if an announcement about a security bug in MacOS is issued at 10 AM and Apple pushes a fix by 6 PM, criminals have only had 8 hours to leverage the bug before Mac users who regularly update their OS are no longer vulnerable. As time goes by though, the news spreads and increasing numbers of bad guys will include the exploit as part of their standard hacking toolkit. If you're running an old version of MacOS before the fix, you're now easy prey.

**Action Items**
* Update the software on your computer (especially your operating system!) when it becomes available
* Turn on auto-updates for the apps on your phone

Password Managers
-----------------
If you're like most people, you have 2-3 passwords that you use across your email, social media, Netflix, Amazon, banking, hotel & airline logins, and so on. You simply remember these passwords, and begrudgingly change them when you're forced to. There are multiple problems with this "password promiscuity" approach:

* Hackers know that most people reuse passwords, so when they compromise companies who don't give a shit about security like [Marriott](https://blog.dashlane.com/marriott-hack/) or [Equifax](https://www.ftc.gov/enforcement/cases-proceedings/refunds/equifax-data-breach-settlement), they immediately try the information they found on other popular sites like Google, Amazon, Netflix, Facebook, Instagram, etc. If you're reusing passwords, your password's confidentiality - and account security (including financial!) - is only as strong as the _weakest_ site.
* Because your passwords need to be memorable, they are likely short and contain English words (maybe with a few numbers). Unfortunately, short passwords with real words are quite easy to crack ([explanation for the nerdy and the curious](https://en.wikipedia.org/wiki/Rainbow_table)).
* You almost definitely don't remember all the sites you've signed up for, and you almost definitely don't follow tech news to stay updated on who's been compromised. This means that if a breach occurs, you're reliant on the company to send a contrite "We're sorry, we've been compromised; please change your password" email (which seems to conveniently get delayed until the company has a PR campaign in place).
* When you do get those change-your-password prompts, you now have to invent a new password and remember it going forward (Post-Its on the monitor might sound familiar).
* Because of all those password changes over the years, you likely have forgotten the username/password combos to old sites you haven't used in a while.

The good news: all these problems go away with a simple tool called a password manager. A password manager's function is twofold: first, it will store all your username/password logins for you in a database that is encrypted with a "master password" so that [not even the password manager company gets to see them](https://blog.1password.com/what-if-1password-gets-hacked/). This frees you from needing to remember anything but the master password, and gives you a record of exactly what credentials you used for that site you haven't touched in 3 years. Second, when signing up for new sites, a password manager will provide a password generator that allows you to create long passwords of random text like `^19@VjCwvYrs1@W88bT9HBJWn@2aK4`. Because all your passwords are stored in the database, you get a password that is functionally impossible to crack without any additional load on your memory. Better yet, each site will have a unique random password so Marriott's ineptitude won't compromise your other accounts.



