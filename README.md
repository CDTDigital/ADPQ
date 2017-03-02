ADPQ project

**How we approached the Prototype:**

Agile Six is a small firm founded in response to the US Digital Services. Therefore, we plan to invest often in competitions like ADPQ and have won a few (i.e. as subs on GSA 18F and DHS Flash).  However, we have learned to minimize investments required in order to be able to compete with large firms.   For this effort, we intentionally limited our investment to 200 total man hours.  We hope that the State will view our input with this context as evidence of how agile we can be, meeting demanding budget constraints, while still respecting the values and techniques of the USDS Playbook.  

We completed the propotype (MVP) on 3/1/17 and started our first round of user testing.   At this point the prototype is quite raw but we believe it demonstrates all of the requirements requested by the RFI.  To demonstrate our undertanding of the process moving forward, we have captured several enhancments, bugs and potential improvements in our product backlog viewable at https://trello.com/b/9KZxufUT/adpq-prototype

The team (described under item b below) conducted a one-week Runway Sprint (infrastructure/architecture/discovery), where we defined and proofed the core architecture of the site as well as settled upon a number of toolsets and processes, including those we would leverage for CI, CM, Deployment, Version Control, and general communication within the team.  (This sprint is a small-scale adaptation of the Architecture Runway construct within Scaled Agile.). The runway sprint was followed by a one week feature development sprint in which the feature-based user stories of the application were implemented and tested by the team, including usability testing by our focus user group. Finally, the team held a short final sprint to implement some feedback from our usability tests within the first sprint.  

The team organized its work using a Trello backlog and scrum board (INSERT LINK HERE). We also set up a Slack Channel to facilitate quick communication among team members, as well as Google Hangouts to facilitate screen sharing and videoconferencing. We leveraged Google Drive as a collaborative document repository, and GitHub as a version control repository.

Assumptions:

- --There were no acceptance criteria around payment methods that the system should support, so the team went with the assumption that credit card payment would be acceptable. Because this is an MVP prototype, and for security reasons, we did not elect to integrate an actual credit card processing engine into the application, however.
- --The team took a mobile-first approach to design. Because this was an MVP prototype with a necessarily limited budget, we were necessarily limited in the amount of progressive enhancement for larger screen sizes that we were able to accomplish. For instance…(more here).

## Technology Stack

Our application architecture and infrastructure were anchored by a number of key principles that overlap and align with the US Digital Service Playbook. These include

**Principle 1: Leverage a modern, open source technology stack**. Using a modern technology stack supported by a thriving open source community mitigates a number of technical risks, including reduced security vulnerabilities, increased availability of technical resources familiar with the technologies, alignment with modern devices and usage scenarios, and the ability to leverage a large ecosystem of pre-built components based on these toolsets. Our technology stack is comprised entirely of open source frameworks and components, including Ruby on Rails, JQuery, Bootstrap, Puma, PostgreSQL, Capybara, Sniffybara, and NewRelic (see diagram below).

**Principle 2: Leverage pre-built components**. In our view, it always makes sense to weigh the cost of building features from scratch against leveraging a suitable COTS and Open-Source components available. In this case, we decided to leverage the open-source SpreeCommerce platform as the basis for the OrderIT MVP application.

**Principle 3: Design for and Deploy to the Cloud**. An application that makes no assumptions about where and how it is hosted enables it to leverage Cloud-based infrastructures such as AWS and Heroku, and scale on demand as usage patterns change. Our OrderIT application runs in a virtual LXC container that can be hosted on any Linux environment, and is deployed to a Heroku Cloud environment that can be scaled on demand as needed.

**Principle 4: Leverage Automated Processes**. As the codebase for an application or system grows, it it essential to have an automated build, test, deployment, and monitoring infrastructure in place. Automated processes allow the team to focus on forward-looking feature development, and not on basic maintenance, testing, and infrastructure tasks. For OrderIT our team leverages the open source Capybara and Sniffybara testing frameworks for automated testing, CircleCI for continuous integration and automated builds, Heroku for automated deployments, and NewRelic for performance monitoring.



**Our approach to Human-Centered Design (HCD):**

We think of HCD as being in 3 repeating phases (read more here: [http://www.agile6.com/documents/8](http://www.agile6.com/documents/8))

1. Hear – Listen to your users in as many ways as possible
2. Create – Build prototypes and MVP&#39;s based on user input
3. Deliver – Launch as soon as a minimum feature set is reached and continue to iterate over time as the demands of your users change.

See our System Overview Here for to for a graphic view of the technologies 
[System Overview](ADPQ/artifacts/SystemOverview.pdf)

Front end systems:

  Open source language: Javascript -

[https://developer.mozilla.org/en-US/docs/Web/JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

  Open source UI Framework: Bootstrap - [http://getbootstrap.com/](http://getbootstrap.com/)

  Open source Javascript library: jQuery - [https://jquery.com/](https://jquery.com/)

Back end system:

Open source language: Ruby - [https://www.ruby-lang.org/en/](https://www.ruby-lang.org/en/)

Libraries:

  Open source Web application framework: Rails - [http://rubyonrails.org/](http://rubyonrails.org/)
  Open source store application: Spree - [https://spreecommerce.com/](https://spreecommerce.com/)
  Open source API documentation: Swagger - [http://swagger.io/](http://swagger.io/)
  Open source Container system: LXC - [https://linuxcontainers.org/](https://linuxcontainers.org/)
  Open Source Continous Integration: CircleCI - [https://circleci.com/](https://circleci.com/)

**How we handled the specific RFI Requirements**

a. Assigned one (1) leader and gave that person authority and responsibility and held that person accountable for the quality of the prototype submitted;

Team Agile Six was lead by Product Owner/Manager Robert Rasmussen who had complete responsibility for the product as well as the team.  Mr. Rasmussen is a certified Product Owner, Scrum Master, Project Manager and Scrum Coach (CSPO, CSM, PMP, CSP, PSPO2, PSM).

b. Assembled a multidisciplinary and collaborative team that includes, at a minimum, five (5) of the labor categories as identified in Attachment B: PQVP DS-AD Labor Category Descriptions;

Team Agile Six was cross-functional and contained all of the skills needed to build the prototype, they included (see our website www.agile6.com for profiles):

Robert Rasmussen - Product Manager, Agile Coach
Ernie Ramirez - Agile Coach, Content Writer
Brian Derfer - Technical Architect
Aurora Hay - Front End Web Developer
Justin George - Technical Architect, DevOps Engineer & Back-end Web Developer
Katherine Rasmussen -  Visual Designer, Usability Tester
Edward Teeple - Security Engineer

c. Understood what people need, by including people in the prototype development and design process;

Team Agile Six included end-users from the inception of our prototype (see tests here  https://drive.google.com/drive/folders/0Bx_pTPgzhPf7Q2xocnpSMWF5Tzg?usp=sharing)

d. Used at least a minimum of three (3) user-centric design techniques and/or tools;

1. Personas - [Personas](ADPQ/artifacts/Front End Design/Personas.pdf)
2. Empathy Map - [EmpathyMap](ADPQ/artifacts/Front End Design/empathy_map.pptx)
3. User Experience Maps - [Personas](ADPQ/artifacts/Front End Design/Personas.pdf)
4. User Tests https://drive.google.com/drive/folders/0Bx_pTPgzhPf7Q2xocnpSMWF5Tzg?usp=sharing
5. Mocks & Wireframes - [AdminUser Wireframe](ADPQ/artifacts/Front End Design/AdminUser.pdf) [UI Options](ADPQ/artifacts/Front End Design/Comparison_selections_UI_Chosen_Options.pdf) [Mobile View](ADPQ/artifacts/Front End Design/Product_Comparison_mobile_sidescroll_indication.jpg) [Other UI Options] (ADPQ/artifacts/Front End Design/Comparison_selections_UIoptions.pdf)


e. Used GitHub to document code commits;

We used only one repository located at [https://github.com/agilesix/ADPQ](https://github.com/agilesix/ADPQ) where all code and artifacts are stored and all code commits documented.

f. Used Swagger to document the RESTful API, and provided a link to the Swagger API;

We used the open source tool RSWAG ( [https://github.com/domaindrivendev/rswag](https://github.com/domaindrivendev/rswag)) Seamlessly adds a Swagger to Rails-based API  (NEED SWAGGER OUTPUT)

g. Complied with Section 508 of the Americans with Disabilities Act and WCAG 2.0;

We followed WCAG 2.0 as wella [http://www.ca.gov/Accessibility](http://www.ca.gov/Accessibility) 508 Plan

We also leveraged a 508 testing tool from another customer called Sniffybara [(https://github.com/department-of-veterans-affairs/sniffybara](https://github.com/department-of-veterans-affairs/sniffybara)), a Ruby gem that adds automatic 508 accessibility compliance checks into your Capybara specs  

(NEED 508 REPORT OUTPUT)

h. Created or used a design style guide and/or a pattern library;

We created and followed a style guide based on USWDS here: http://orderit.agile6.com/style_guide/buttons_iconography

i. Performed usability tests with people;


For the sake of this effort we used and abbreviated HCD approach based on our standard approach which is outlined below.  We enlisted family members and employees who were not members of the development team. Recordings of User Testing Sessions can be found here https://drive.google.com/drive/folders/0Bx_pTPgzhPf7Q2xocnpSMWF5Tzg?usp=sharing


1. Hear Phase: We collected a sample pool of nine users (volunteers) who had no roles in our project.  We performed a usability study workshop where we had open discussions about the app and what kind of their expectations as documented in our Empathy Map (INSERT LINK).  The workshop and map focused on what the user sees, hears, thinks, says and does.  Then we used this information to consider the pains and gains involved in engagement with such apps in order to maximize the value to the end user in the design.
2. Create Phase:  After listing to our users we created 4 user personas [Personas](ADPQ/artifacts/Front End Design/Personas.pdf), which we felt reflected a fair segmentation of our users.   We then chose 3 users to represent these profiles during prototyping, design and user testing (we acknowledge that this pool is small and intentionally abbreviated for this prototype).  With these personas and empathy map in hand we met as a team to whiteboard the application flow [Sketch](ADPQ/artifacts/Front End Design/sketch_design.JPG). Based on this experience we were ready to build our prototype.  Sketches came first and then wireframes [AdminUser Wireframe](ADPQ/artifacts/Front End Design/AdminUser.pdf) [UI Options](ADPQ/artifacts/Front End Design/Comparison_selections_UI_Chosen_Options.pdf) [Mobile View](ADPQ/artifacts/Front End Design/Product_Comparison_mobile_sidescroll_indication.jpg) [Other UI Options] (ADPQ/artifacts/Front End Design/Comparison_selections_UIoptions.pdf).  The final delivery of this phase was the prototype located here http://orderit.agile6.com.
3. Deliver Phase - If we were to proceed with this application, we would enter our 3rd phase of HCD which would include frequently adding new features in similar fashion (expose to small subset of users, analyze, slowly roll out). We never stop soliciting feedback from users, never stop improving the User Experience and we update journey maps with the users as they grow.  The following link shows the trello board we used as both a product and sprint backlog:  https://trello.com/b/9KZxufUT/adpq-prototype

j. Used an iterative approach, where feedback informed subsequent work or versions of the prototype;

We believe strongly in frequent iterations based on user feedback.  Therefore, we focus on getting an MVP in the hands of users ASAP (usually within 30 days).  In the case of this prototype we had very limited time and budget.  Therefore we performed only one post production iteration based one user test session. User feedback that was not prioritized for our iteration was put into the prioritized product backlog for use in future releases and can be found here: https://trello.com/b/9KZxufUT/adpq-prototype

k. Created a prototype that works on multiple devices, and presents a responsive design;

The user-facing features of our prototype, including both the UI elements provided by SpreeCommerce, as well as our own UI implementations, leverage Bootstrap's grid system and employ responsive techniques, resulting in an excellent user experience regardless of the kind or size of device used. Our team utilized a mobile-first approach on the custom features we implemented, creating initial designs to work on phones and small mobile devices, then progressively enhancing this design for larger devices.

We chose SpreeCommerce understanding that any choice of a third-party open source component entails trade-off decisions. In this case, Spree's admin functionality did not support responsive design, but the team felt that administrative functions would not typically be performed on mobile devices, and hence determined that the advantages gained by leveraging a pre-built component outweighed this disadvantage.

l. Used at least five (5) modern and open-source technologies, regardless of architectural layer (frontend, backend, etc.);

Our solution is comprised entirely of modern open source technologies, including:

- Ruby on Rails 5.0.1 as a development language/framework
- SpreeCommerce 3.2.0 as an e-commerce platform
- Bootstrap 3.3.7 as a responsive UI framework
- JQuery 3.1.1 as a Javascript Library
- Puma 3.7.1 as a web server
- Capybara 2.12.1 as a Testing Framework
- Sniffybara 0.0.1 as a 508 Compliance Testing Framework
- PostgreSQL 9.6.2 as a relational DBMS
- NewRelic RPM 3.18.1 as a Application Performance Monitoring Framework

m. Deployed the prototype on an Infrastructure as a Service (IaaS) or Platform as Service (PaaS) provider, and indicated which provider they used;

We deployed the prototype on Heroku, a PaaS provider. Heroku integrates with GitHub, allowing for easy automated deployment. Our prototype can easily operate on a substitute IaaS or PaaS like Amazon Web Services, Cloud.gov, or Google Cloud Services or substitute PaaS like Microsoft Azure

Hosting and Deployment: Heroku - [https://www.heroku.com/](https://www.heroku.com/)

n. Developed automated unit tests for their code;

(LINK TO REPORTS HERE)

o. Setup or used a continuous integration system to automate the running of tests and continuously deployed their code to their IaaS or PaaS provider;

(LINK TO REPORTS HERE)

p. Setup or used configuration management;

q. Setup or used continuous monitoring;

Continous Monitoring, Error collection &amp; Alerting: New Relic -

[https://newrelic.com/](https://newrelic.com/)

r. Deployed their software in an open source container, such as Docker (i.e., utilized operating-system-level virtualization);

Open source Container system: LXC - [https://linuxcontainers.org/](https://linuxcontainers.org/)

s. Provided sufficient documentation to install and run their prototype on another machine; and

1. Ensure that you have Ruby installed and functional ( https://www.ruby-lang.org/en/ )
2. Install Bundler ( `gem install bundler` )
3. Download the project (`git clone git://github.com/agilesix/ADPQ.git`)
4. Enter the project directory (`cd ADPQ`)
5. Run bundler to download dependencies (`bundle install`)
6. Ensure that you have a current version of PostgreSQL installed (`https://www.postgresql.org/download/` or `apt-get install postgres`)
7. Create the database user (`createuser agilesix-adpq -s`)
8. Set up the database and run the database migrations (`bundle exec rake db:create db:migrate db:seed`)
9. At the prompt, create an admin user of your choice
10. Run the application (`bundle exec rails s`)
11. Visit http://localhost:3000/ and you should see the application running if the steps were completed successfully

t. Prototype and underlying platforms used to create and run the prototype are openly licensed and free of charge.

 Our entire software stack is open source and provided free of charge. 



