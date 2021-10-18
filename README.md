# Ask Us

Ask Us is a flutter based android app. It's basically a discussion forum somewhat like Quora, designed to ask questions, share their experiences and to know what their peeps are up to.

## Getting Started

- [Setup Git](https://git-scm.com/downloads)
- [Set up flutter and Android Studio](https://flutter.dev/docs/get-started/install)
- [Or setting up VS code for flutter](https://flutter.dev/docs/development/tools/vs-code)

## Local Setup

- Fork the repo.
- Clone it to your local setup by using the command `git clone <repo link>`
- Open the project with Android Studio or VS code

 Directly cloning from Android Studio (Alternate method):-

- Go to FILE -> NEW -> PROJECT FROM VERSION CONTROL
- Copy and paste the url of FORKED repo in the URL field and click clone.

Before cloning the project make sure you have set up the IDE correctly according to the resources given in the getting started section. 

## App Design

To get an idea how the app will look like, head over to the following figma link:- 
- [Ask Us Design](https://www.figma.com/file/DrJfbkx9c5h2ac4dQtfgWn/AskUs?node-id=0%3A1)

## How to contribute

- After setting up the project on the local system, go to the issues section to claim issues.
- Remember to regularly pull the updates made by others on the repo to avoid merge conflicts.
- Read all the guidelines carefully before making any pull request on the repo.

IMPORTANT NOTE:-
Please attach screenshots of the runnuing app on your emulator of the changes that you have done before making a pr.

## Using Api for Backend

The Following endpoints are currently live :-
- For posting new questions [POST] :- https://askusdev.herokuapp.com/question/
- For getting list of all questions [GET] :- https://askusdev.herokuapp.com/question/
- For creating new answer having question id = qid [POST] :- https://askusdev.herokuapp.com/question/{qid}/answer/
- For retrieving all answers of question having id = qid. [GET] :- https://askusdev.herokuapp.com/question/{qid}/answer/

Schema :- 

![WhatsApp Image 2021-10-14 at 6 13 59 PM](https://user-images.githubusercontent.com/75803425/137736064-9acb8060-4c7b-4961-8be0-e99f93ee5637.jpeg)

Data to be sent in JSON format.
Fields required while creating a new question and answer are specified in schema, other fields will be filled automatically.

For any doubt, feel free to ask us on our [discord](https://discord.gg/9McHvjbz) channel.
 

## Guidelines

Please help us follow the best practice to make it easy for the reviewer as well as the contributor. We want to focus on the code quality more than on managing pull request ethics.
- Single commit per pull request and name the commit as something meaningful, example: Adding <-your-name-> in students section.
- Reference the issue numbers in the commit message if it resolves an open issue.Follow the PR template strictly.
- Do not use unnecessary variables or functions and follow a easy and understandable code structure with proper comments.
- Provide the link to live heroku pages from your forked repository or relevant screenshots for easier review.
- Pull Requests older than 2 days with no response from the contributor shall be marked closed.
- Do not make PR which is not related to any issues. You can create an issue and solve it once we approve them.
- Avoid duplicate PRs, if need be comment on the older PR with the PR number of the follow-up (new PR) and close the obsolete PR yourself.
- Be polite: Be polite to other community members.

## Communicate

Whether you are working on an issue or facing a doubt please feel free to ask us on our [discord](https://discord.gg/9McHvjbz) channel. We will be happy to help you out. 





