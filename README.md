# WDI 2nd project: WeiDing Gifts


##The initial idea

The project was to make a multiple model website with a few different types of relations, following RESTful routes using rails. As a lot of my friends have been getting married recently, I decided to do an app for a wedding gift registry.

##The Planning

I started first with wireframes, designing the site entirely mobile first so that I could understand the user flow and see what functions would improve usability and what presentation elements were most important to the user.

These were my final wireframes:

![alt text](/readmeimages/mockup.png "Mockups")


And this is what my workflow trello looked like at the end

![alt text](/readmeimages/Trello.png "Final Trello")

I spent a significant amount of time working on the mock up and mentally organising how the site will be used and how the site should work in conjunction with the user. I found this step actually really helpful in understanding what features and pages were really required, and later how to organise the features in a natural way.

##Key features

####Setting up
The site allows you to sign up and authorises you via an email. After authorisation, you can create a wedding, which will have a name, a short description, and a picture. You will automatically be assigned as an admin of the wedding.

In your wedding, if you created the wedding, or are assigned as a wedding admin or couple, you can add, edit and delete gift entries, labelled as 'wishes'.

Admins and the couple can also invite guests to website. If the guest's email is not within the system, an email invite is sent. Otherwise, it notifies you that the guest is registered with the website, and adds their name to the list of people invited to the wedding.

The invite system is email dependent, and the details of the invited user are only revealed when they confirm their attendance to the wedding.

####Wedding gift functions

The wedding page is where the majority of the functionality of the site is. It shows the wishes that have been claimed, and allows you to search through the wishes by name.

Any user can 'claim' wishes, thereby removing them from the pool of wishes to be claimed. The gift(s) that they claim appear at the top of the wedding gift list, and any other gifts that are claimed will be listed at the bottom of the wedding screen.

Admins will be able to see who claimed the gifts.


the initial idea, the planning (wireframes/trello), a project demo, key pain points, key wins (potentially show off some code) and then overall thoughts and what you would do if you had another couple of days.
