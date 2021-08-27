
# Online Quiz - Laravel 8

[Click here](../README.md) to return to the Turkish README.md file.

![](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![](https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white)
![](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)
![](https://img.shields.io/badge/npm-CB3837?style=for-the-badge&logo=npm&logoColor=white)
![](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
![](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)


This project is an online quiz system coded with Laravel 8. There are two types of users:
- admin: This user can create, edit, delete quizzes and add questions to quizzes. In addition to this, every operation performed by the normal user type can be performed by the admin users.
- normal: These users can participate in quizzes that are active on the site and whose deadline has not passed, see their own rating, examine the questions they get right/wrong, and see the percentage of correct answers to these questions by other users.
## Required Installation

PHP, Laravel, MySQL, Composer and NPM must be installed for your project to run on your local machine. Below are the necessary links for installation:

- PHP installation: [`https://www.php.net/manual/tr/install.php`](https://www.php.net/manual/tr/install.php)
- Laravel installation: [`https://laravel.com/docs/8.x/installation`](https://laravel.com/docs/8.x/installation)
- MySQL installation: [`https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/`](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/)
- Composer installation: [`https://getcomposer.org/download/`](https://getcomposer.org/download/)
- NPM installation: [`https://www.npmjs.com/get-npm`](https://www.npmjs.com/get-npm)

## Steps to Run the Project
First, clone the project or download the files as `.zip` and extract them to the directory. To clone:
`git clone https://github.com/fatihes1/online-quiz-project-laravel.git`
Open the project directory and run the following command line to install the required Node modules:
`npm i`
To install and update Composer packages, enter the following codes in order on the command line:
`composer install`
`composer update`
For database creation, first open the `.env` file in the project directory for editing and assign your MySQL password to the `DB_PASSWORD` variable. Next, go to address `localhost/phpmyadmin` and create a database called `quiz`. There are two ways you can follow after this step.
- You can import the `quiz.sql` file in the `SQL_FILE_HERE` folder in the project directory in the database you created.

or

- you can run `php artisan migrate` command in command line.

Finally, run the following code on the command line to run the project on the server.
`php artisan serve`

After all these processes, the project will run at `127.0.0.1/8000` or `localhost:8000`.

## Architecture and Technologies

#### **MVC (Model-View-Controller) :**
Model-View-Controller (MVC) is an **architectural pattern** used in software engineering. It is based on the abstraction of data and representation in complex applications where large amounts of data are presented to the user. Thus, model and user interface (* view*) are analyzed without affecting each other, by means of data display, data access and business logic extraction from user interaction with an intermediate component called controller..
<hr>

#### **Laravel 8 :**
As you know, there are many **frameworks** in the **PHP** language that facilitate the work of users and provide security support. With the slogan "The PHP Framework for Web Artists", Laravel comes first in these **framework** structures. It has a great usage rate while developing web applications.

With **Laravel**, you can speed up the preparation of our projects and easily perform the processes that you spend a lot of time on. For example, you can easily prepare processes such as session management, caching and user authentication.

It is enriched with **MVC** structure, which is an open source framework.
For more, [click](https://laravel.com/docs/8.x/).
<hr>

#### **Laravel Jetstream**
Laravel Jetstream enhances the existing Laravel UI scaffold found in previous versions. It provides a starting point for new projects, including login, registration, email verification, two-factor authentication, session management, API support via Laravel, and team management.
For more, [click](https://github.com/laravel/jetstream)

<hr>

#### **Bootstrap 5**
Bootstrap, HTML, [CSS](https://www.argenova.com.tr/css "CSS") ve [JavaScript](https://www.argenova.com.tr/javascript "JavaScript") ile yazılmış kullanışlı, yeniden kullanılabilir kod parçalarından oluşan dev bir koleksiyondur. Ayrıca, geliştiricilerin ve tasarımcıların hızla tam olarak duyarlı web siteleri oluşturmasını sağlayan bir frameworktür.
For more, [click](https://getbootstrap.com/docs/5.0/getting-started/introduction/)
<hr>

#### **JQuery**
The aim of JQuery, which is the most used JavaScript library in the world, is to provide a free and open source technology that enables the JavaScript language to be used easily over the internet.

One of the biggest advantages of jQuery is that it works consistently in all browsers, so it can be used easily in all environments.

For more,  [click](https://jquery.com/)

<hr>

#### **MySQL**
As a relational database, MySQL is one of the most popular open source relational database management systems, which was introduced in 1995. MySQL, which is a powerful database management system, can be used in almost any environment that requires a database. But it is the most used database especially on web servers, it can be used with many web programming languages such as asp and php.

For more,  [click](https://www.mysql.com/)

## Project Images
![1](https://user-images.githubusercontent.com/54971670/131108441-5e50a0dc-e5d3-41be-8449-1fa89124f66d.PNG)

<hr>

![2](https://user-images.githubusercontent.com/54971670/131108442-28b751cc-4174-4bee-a31a-1f97b729886f.PNG)

<hr>

![3](https://user-images.githubusercontent.com/54971670/131108444-df7bb40a-c3d0-4210-b2fb-54ea823d04ee.PNG)

<hr>

![4](https://user-images.githubusercontent.com/54971670/131108451-71023863-d9ae-456c-af42-4d97c3ca3077.PNG)

<hr>

![5](https://user-images.githubusercontent.com/54971670/131108454-acd78708-9527-4826-88ff-b849bb6e1be3.PNG)

<hr>

![6](https://user-images.githubusercontent.com/54971670/131108455-b31207c4-1c9d-4d02-a7d7-75f7c54c5121.PNG)

<hr>

![7](https://user-images.githubusercontent.com/54971670/131108458-c33ede6f-ad38-4e87-9932-bf1ea791f53e.PNG)

<hr>

![8](https://user-images.githubusercontent.com/54971670/131108459-061daf30-577a-43a1-b532-91a7c2244f06.PNG)

## Author
`Fatih Es` You can follow me on the following platforms.
<br>

[![](https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/fatihes/)
[![](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/fatihtech/)
[![](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/channel/UCpMnisdqsNAGzJfQBkBaOKg)
[![](https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white)](https://fatihes.medium.com/)

