#ADPQ project

**How we approached the Prototype:**

Agile Six is a small firm founded in response to the US Digital Services. Therefore, we plan to invest often in competitions like ADPQ and have won a few (i.e. as subs on GSA 18F and DHS Flash).  However, we have learned to minimize investments required in order to be able to compete with large firms.   For this effort, we intentionally limited our investment to 200 total man hours.  We hope that the State will view our input with this context as evidence of how agile we can be, meeting demanding budget constraints, while still respecting the values and techniques of the USDS Playbook. Looking forward, we have captured several bugs and potential improvements in our product backlog viewable at https://trello.com/b/9KZxufUT/adpq-prototype

The team (described under item b below) conducted a one-week Runway Sprint (infrastructure/architecture/discovery), where we defined and proofed the core architecture of the site as well as settled upon a number of toolsets and processes, including those we would leverage for CI, CM, Deployment, Version Control, and general communication within the team. The runway sprint was followed by a one week feature development sprint in which the feature-based user stories were implemented and tested by the team, including usability testing by our focus group. Finally, the team held a short final sprint to implement some feedback.  

The team organized its work using a Trello  board. We also set up a Slack Channel to facilitate quick communication among team members, as well as Google Hangouts to facilitate screen sharing and videoconferencing. We leveraged Google Drive as a collaborative document repository, and GitHub as a version control repository.

The prototype is located here http://orderit.agile6.com.

Assumptions:

- --There were no acceptance criteria around payment methods that the system should support, so the team went with the assumption that credit card payment would be acceptable. Because this is an MVP prototype, and for security reasons, we did not elect to integrate an actual credit card processing engine into the application, however.
- --The team took a mobile-first approach to design. Because this was an MVP prototype with a necessarily limited budget, we were necessarily limited in the amount of progressive enhancement for larger screen sizes that we were able to accomplish. 

## Technology Stack

Our application architecture and infrastructure were anchored by a number of key principles that overlap and align with the US Digital Service Playbook. These include

**Principle 1: Leverage a modern, open source technology stack**. Using a modern technology stack supported by a thriving open source community mitigates a number of technical risks, including reduced security vulnerabilities, increased availability of technical resources familiar with the technologies, alignment with modern devices and usage scenarios, and the ability to leverage a large ecosystem of pre-built components based on these toolsets. Our technology stack is comprised entirely of open source frameworks and components, including Ruby on Rails, JQuery, Bootstrap, Puma, PostgreSQL, Capybara, Sniffybara, and NewRelic (see diagram below).

**Principle 2: Leverage pre-built components**. In our view, it always makes sense to weigh the cost of building features from scratch against leveraging a suitable COTS and Open-Source components available. In this case, we decided to leverage the open-source SpreeCommerce platform as the basis for the OrderIT MVP application.

**Principle 3: Design for and Deploy to the Cloud**. An application that makes no assumptions about where and how it is hosted enables it to leverage Cloud-based infrastructures such as AWS and Heroku, and scale on demand as usage patterns change. Our OrderIT application runs in a virtual LXC container that can be hosted on any Linux environment, and is deployed to a Heroku Cloud environment that can be scaled on demand as needed.

**Principle 4: Leverage Automated Processes**. As the codebase for an application or system grows, it it essential to have an automated build, test, deployment, and monitoring infrastructure in place. Automated processes allow the team to focus on forward-looking feature development, and not on basic maintenance, testing, and infrastructure tasks. For OrderIT our team leverages the open source Capybara and Sniffybara testing frameworks for automated testing, CircleCI for continuous integration and automated builds, Heroku for automated deployments, and NewRelic for performance monitoring.

**Our approach to Human-Centered Design (HCD):**

We think of HCD as being in 3 repeating phases (read more here: [Agile Six's Human Centered Design Presentation](https://www.agile6.com/documents/8))

1. Hear – Listen to your users in as many ways as possible
2. Create – Build prototypes and MVPs based on user input
3. Deliver – Launch as soon as a minimum feature set is reached and continue to iterate over time as the demands of your users change.

See our System Overview Here for to for a graphic view of the technologies
[System Overview](../master/artifacts/SystemOverview.pdf)

Front end systems:

* Open source language: Javascript - [https://developer.mozilla.org/en-US/docs/Web/JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
* Open source UI Framework: Bootstrap - [http://getbootstrap.com/](http://getbootstrap.com/)
* Open source Javascript library: jQuery - [https://jquery.com/](https://jquery.com/)

Back end system:
* Open source language: Ruby - [https://www.ruby-lang.org/en/](https://www.ruby-lang.org/en/)

Libraries:
  * Open source Web application framework: Rails - [http://rubyonrails.org/](http://rubyonrails.org/)
  * Open source store application: Spree - [https://spreecommerce.com/](https://spreecommerce.com/)
  * Open source API documentation: Swagger - [http://swagger.io/](http://swagger.io/)
  * Open source Container system: LXC - [https://linuxcontainers.org/](https://linuxcontainers.org/)
  * Open Source Continous Integration: CircleCI - [https://circleci.com/](https://circleci.com/)

**How we handled the specific RFI Requirements**

A. Team Agile Six was lead by Product Owner/Manager Robert Rasmussen who had complete responsibility for the product as well as the team.  Mr. Rasmussen is a certified Product Owner, Scrum Master, Project Manager and Scrum Coach (CSPO, CSM, PMP, CSP, PSPO2, PSM).

B. Team Agile Six was cross-functional and included (see our website www.agile6.com for profiles):

    Robert Rasmussen - Product Manager, Agile Coach
    Ernie Ramirez - Agile Coach, Content Writer
    Brian Derfer - Technical Architect
    Aurora Hay - Front-end Web Developer
    Justin George - Technical Architect, DevOps Engineer & Back-end Web Developer
    Katherine Rasmussen -  Visual Designer, Usability Tester
    Edward Teeple - Security Engineer

C. Agile Six included end-users from the inception of our prototype (see tests here  https://drive.google.com/drive/folders/0Bx_pTPgzhPf7Q2xocnpSMWF5Tzg?usp=sharing). 

Our approach was as follows:

1. Hear Phase: We collected a sample pool of nine users (volunteers) who had no roles in our project.  We performed a usability study workshop where we had open discussions about the app and their expectations as documented in our Empathy Map.  The workshop and map focused on what the user sees, hears, thinks, says and does.  Then we used this information to consider the pains and gains involved in engagement with such apps in order to maximize the value to the end user in the design.
2. Create Phase:  After listing to our users we created user personas [Personas](ADPQ/artifacts/Front End Design/Personas.pdf), which we felt reflected a fair segmentation of our users.   We then chose 3 users to represent these profiles during prototyping, design and user testing (we acknowledge that this pool is small and intentionally abbreviated for this prototype).  With these personas and empathy map in hand, we met as a team to whiteboard the application flow [Sketch](ADPQ/artifacts/Front End Design/sketch_design.JPG). Based on this experience we were ready to build our prototype.  Sketches came first and then wireframes [AdminUser Wireframe](ADPQ/artifacts/Front End Design/AdminUser.pdf) [UI Options](ADPQ/artifacts/Front End Design/Comparison_selections_UI_Chosen_Options.pdf) [Mobile View](ADPQ/artifacts/Front End Design/Product_Comparison_mobile_sidescroll_indication.jpg) [Other UI Options](ADPQ/artifacts/Front End Design/Comparison_selections_UIoptions.pdf).  
3. Deliver Phase - If we were to proceed with this application, we would enter our 3rd phase of HCD which would include frequently adding new features in similar fashion (expose to small subset of users, analyze, slowly roll out). We never stop soliciting feedback from users, never stop improving the User Experience and we update journey maps with the users as they evolve.  

Future Backlog - The following link shows the trello board we used as both a product and sprint backlog:  https://trello.com/b/9KZxufUT/adpq-prototype

D. Agile Six used 4 user design techniques

1. Personas - [Personas](../master/artifacts/Front End Design/Personas.pdf)
2. Empathy Map - [EmpathyMap](../master/artifacts/Front End Design/empathy_map.pptx)
3. User Tests [User Testing Sessions](https://drive.google.com/drive/folders/0Bx_pTPgzhPf7Q2xocnpSMWF5Tzg?usp=sharin)
4. Mock ups & Wireframes - [AdminUser Wireframe](../master/artifacts/Front End Design/AdminUser.pdf) | [UI Options](../master/artifacts/Front End Design/Comparison_selections_UI_Chosen_Options.pdf) | [Mobile View](../master/artifacts/Front End Design/Product_Comparison_mobile_sidescroll_indication.jpg) | [Other UI Options](../master/artifacts/Front End Design/Comparison_selections_UIoptions.pdf)

E. We used only one repository located at [https://github.com/agilesix/ADPQ](https://github.com/agilesix/ADPQ) where all code and artifacts are stored and all code commits documented.

F. We believe that the requirement for swagger documentation of a REST API is grounded in an assumption that the solution would use a single page app/RESTful web service architecture. However, we did not see a requirement for such an architecture in the request. We believe the most efficient solution for delivering the stated requirements is to leverage an off-the-shelf component such as Spree. As a result our solution is not based on single page app/RESTful web service architecture, but on a rails MVC architecture. Nevertheless, we have documented a subset of the Spree RESTful API in order to demonstrate our understanding of how to use Swagger to document RESTful APIs
http://orderit.agile6.com/api-docs

G. We followed WCAG 2.0 as well as [http://www.ca.gov/Accessibility](http://www.ca.gov/Accessibility). We also leveraged [Sniffybara](https://github.com/department-of-veterans-affairs/sniffybara), a Ruby gem that adds automatic 508 accessibility compliance checks into your Capybara specs. Report screenshot can be found here [508 Report](../master/artifacts/ADPQ_508.png). 

H. We created and followed a style guide based on USWDS here: [OrderIT Style Guide](http://orderit.agile6.com/style_guide)

I. Recordings of User Testing Sessions can be found here: [User Testing Sessions](https://drive.google.com/drive/folders/0Bx_pTPgzhPf7Q2xocnpSMWF5Tzg?usp=sharin)

J. We believe strongly in frequent iterations based on user feedback.  Therefore, we focus on getting an MVP in the hands of users ASAP (usually within 30 days).  In the case of this prototype we had very limited time and budget.  Therefore we performed only one post production iteration based one user test sessions. User feedback that was not prioritized for our iteration was put into the prioritized product backlog for use in future releases and can be found here: https://trello.com/b/9KZxufUT/adpq-prototype

K. The user-facing features of our prototype, including both the UI elements provided by SpreeCommerce, as well as our own UI implementations, leverage Bootstrap's grid system and employ responsive techniques, resulting in an excellent user experience regardless of the kind or size of device used. Our team utilized a mobile-first approach on the custom features we implemented, creating initial designs to work on phones and small mobile devices, then progressively enhancing this design for larger devices. We chose SpreeCommerce understanding that any choice of a third-party open source component entails trade-off decisions. In this case, Spree's admin functionality did not support responsive design, but the team felt that administrative functions would not typically be performed on mobile devices, and hence determined that the advantages gained by leveraging a pre-built component outweighed this disadvantage.

L. Our solution is comprised entirely of modern open source technologies, including:
- Ruby on Rails 5.0.1 as a development language/framework
- SpreeCommerce 3.2.0 as an e-commerce platform
- Bootstrap 3.3.7 as a responsive UI framework
- JQuery 3.1.1 as a Javascript Library
- Puma 3.7.1 as a web server
- Capybara 2.12.1 as a Testing Framework
- Sniffybara 0.0.1 as a 508 Compliance Testing Framework
- PostgreSQL 9.6.2 as a relational DBMS
- NewRelic RPM 3.18.1 as a Application Performance Monitoring Framework

M. We deployed the prototype on [Heroku](https://heroku.com), a PaaS provider. Heroku integrates with GitHub, allowing for easy automated deployment. 

Hosting and Deployment: [Deployment to Heroku](https://github.com/agilesix/ADPQ/wiki/Deployment-to-Heroku)

N. We developed automated unit tests for our code using [Rspec](http://rspec.info/)

o. We used [CircleCI](https://circleci.com/) for continuous integration and our builds can be found here: [Agile Six ADPQ Builds](https://circleci.com/gh/agilesix/ADPQ)

Sample report here: [Sample Report](https://117-81989727-gh.circle-artifacts.com/0/tmp/circle-artifacts.pAi5FCN/coverage/index.html#_AllFiles). Every time we do a code checkin, reports are produced under the corresponding build in CircleCI.

p. Setup or used configuration management;

This was managed via GitHub https://github.com/agilesix/ADPQ/

Q. We used New Relic for Continous Monitoring, Error Collection & Alerting
[New Relic](https://newrelic.com/)

R. We deployed to the LXC open source container system: [https://linuxcontainers.org/](https://linuxcontainers.org/)

S. Instructions can be found here:  [Setup Instructions](https://github.com/agilesix/ADPQ/wiki/Setup-Instructions)

T. Our entire software stack is open source and provided free of charge. 



