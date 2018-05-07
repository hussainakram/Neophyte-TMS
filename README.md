Neophyte TMS
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://neophyte-tms.herokuapp.com/)
<a href="https://aimeos.org/">
    <img src="https://github.com/hussainakram/Neophyte-TMS/blob/master/app/assets/images/logo.png" alt="Neophyte-TMS logo" title="Neophyte TMS" align="right" height="60" />
</a>

Description
-----------
Neophyte TMS is a brand new solution to manage, evaluate and assess employees in a company with a lot of mixed functionalities and better perfomance.With this companies can train their newbies with underlying technologies with minimal effort of their senior developers.

In Neophyte-TMS, company is divided into different departments that will contain the ongoing as well as completed projects of the relative department.When a newbie joins a company he/she allocates a department and a project. The entire projects detail is divided into challenges. If some error occurs while doing a challenge, employee can consult to the bugs directory where he can search for the error. If the same error occurred to someone else then the solution will be in the bugs folder otherwise employee can post the problem in the chat system to discuss it with other employees or he can find the solution of the problem himself and upload it in the bugs folder for future help. After completing the challenge, a quiz is conducted. If he gets scores greater than predefined limit, he will get bonus stars for good performance. If the scores less than predefined limit, he has to retake the quiz otherwise he would not go to the next challenge. A schedule meeting is arranged by looking at the free slots in the schedules of senior developers and newbies to make them familiar with each other. The projects trainer can see the progress of the employees also.

## Table of content

 - [Getting Started](#gettingstarted)
    - [Prerequisites](#prerequisites)
    - [Installion](#installion)
 - [Problems? Issues?](#problems?issues?)
 - [Features](#features)
 - [Gems and APIs](#gemsandapis)
 - [Documentation and Support](#documentationandsupport)
 - [Similar Projects](#similarprojects)
 - [Contributing](#contributing)
 - [Credits](#credits)
- [License](#license)


## Getting Started
To run this application on your system, you need to follow these instructions.

### Prerequisites
First make sure you have [RVM](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-on-ubuntu-14-04-using-rvm) and [PostgreSQL](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-14-04) intstalled on your machine and the specified version of Ruby.

### Installion

This application requires:

- Ruby 2.4.1
- Rails 5.1.4

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

**Now to Clone run**
```
git clone git@github.com:hussainakram/neophyte-lms.git
```
Go to project's directory and run following commands:
```
rake db:create
rake db:migrate
rake db:seed
bundle install
```
All set and now to start server run ```rails server```.


## Problems? Issues?

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.
## Features
The system that possesses following features:
- Capability of guiding new comers about the projects and all the related
knowledge one should have.
- Train new employees till they become able to get their hands on the
projects.
- Automatically redistribute these guidelines/Steps in the format of written
text in audio format so Employees/Trainees would be able to multitask.
- Assign Task to trainee and set due date for each project.
- Conduct meetings between senior and junior employees and among juniors
automatically. Automatically synchronize appointments to their
calendar depending on their availability
- A periodically evaluation system for all juniors that will rate them on
the basis of their work progress.
- Graphical representation of progress of our overall project on the basis
of deliverable and time.
- Post any idea or file on the Board that could be helpful for other
trainees.
- Chat/Discussion room for Trainees/Employees to discuss ideas or to
help each other plus they would be able to send direct messages to
each other.
- Trainees/Employees would be able to check the deadlines of the upcoming
tasks.
- Notifier tells you about new comments, messages, and chats.
- Set Reminders to get notified of upcoming tasks
- Trainees/Employees can set work hours so notifications are not sent on
weekends.
- Latest activity Feature to keep track of all the activities happening.
- Search Option to search the tasks completed or document uploaded by
some Employee
- Reports to check whats on someone’s plate and what they have been
up recently

## Gems and APIs
 ### Gems
We are using libraries of Ruby on Rails such as
- **Shoulda** is a gem that allows you to create more understandable tests
for your Ruby application. Shoulda allows you to provide context to
your tests enabling you to categorize tests according to a specific feature
or scenario you’re testing
- **Factory_Girl** provides a framework and DSL for defining and using
factories - less error-prone, more explicit, and all-around easier to work
with than fixtures. It has straightforward definition syntax, support for
multiple build strategies (saved instances, unsaved instances, attribute
hashes, and stubbed objects), and support for multiple factories for the
same class (user, admin user, and so on), including factory inheritance.
- **CanCan** is an authorization library for Ruby on Rails which restricts
what resources a given user is allowed to access and is decoupled from
user roles. All permissions are stored in a single location and not duplicated
across controllers, views, and database queries.
- **Nokogiri** is an HTML, XML, SAX, and Reader parser. Among Nokogiris
many features is the ability to search documents via XPath or
CSS3 selectors. Nokogiri parses and searches XML/HTML very quickly,
and also has correctly implemented CSS3 selector support as well as
XPath support.
- **Sass** makes CSS fun again. Sass is an extension of CSS3, adding nested
rules, variables, mixins, selector inheritance, and more. Its translated
to well-formatted, standard CSS using the command line tool or a webframework
plugin
- **Bundler** is a tool that manages gem dependencies for your ruby application.
It takes a gem manifest file and is able to fetch, download,
and install the gems and all child dependencies specified in this manifest.
It can manage any update to the gem manifest file and update
the bundle’s gems accordingly. It also lets you run any ruby code in
context of the bundle’s gem environment
### APIs
- **Google APIs** support most modern sites online. From analytics, to
the advertising exchange, maps, to Google+ shares, chances are, most
sites are using a Google API. Currently, 57 APIs are available from
Google, as well as a number of other developer tools
- **Facebook** offers APIs for working with Credits, Ads, Chat, and more,
including a couple of legacy APIs that are no longer actively supported.
Also found here is the Graph API, which is the backbone of the Facebook
Platform, and enables your app to read and write data to Facebook.
- **FullContact** provides information about the person behind an email
address. From that one piece of data you can determine full name, age,
location, gender and social network accounts. The service also accepts
as input Twitter username, Facebook ID, or phone number in place of
email address. You won’t find a trove of data for every single email
address, but in many cases you’ll find enough to determine the user’s
company and their social influence.
- **SendGrid** was the first to bring transactional email to developers.
Its offering has since expanded beyond email delivery to include realtime
email data (via webhook), triggered responses, and even some
marketing features. At the very least, any app with user accounts
or ecommerce will need to send transactional email. SendGrid has
plenty of competitors, but the most well-known is likely MailChimp’s
Mandrill.
## Documentation and Support

## Similar Projects

## Contributing

Please read [CONTRIBUTING.md](https://github.com/hussainakram/Neophyte-TMS/blob/master/Contributing.md) for details on our code of conduct, and the process for submitting pull requests to us.
## Credits


## License

