# Online Quiz - Laravel 8
![](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![](https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white)
![](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)
![](https://img.shields.io/badge/npm-CB3837?style=for-the-badge&logo=npm&logoColor=white)
![](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
![](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)

[Click here](ReadmeFiles/EN_README.md) for English README.

Bu projede Laravel 8 ile online bir quiz sistemi kurulmuştur. İki adet kullanıcı tipi vardır:
- admin: Bu kullanıcı quizler oluşturabilir, düzenleyebilir, silebilir ve quizlere sorular ekleyebilir. Bununla beraber normal kullanıcı tipinin yaptığı her işlemi admin kullanıcılarda yapabilmektedir.
- normal: Bu kullanıcılar sitede aktif olan ve son katılım tarihi geçmemiş quizlere katılabilir, kendi derecesine görebilir, doğru/yanlış yaptığı soruları inceleyip bu sorular diğer kullanıcıların yüzdelik olarak doğru cevap verilme oranını görebilir.
## Kurulumlar

Projenizin yerel makinenizde çalışabilmesi için PHP, Laravel, MySQL, Composer ve NPM kurulu olmalıdır. Aşağıda kurulum için gerekli linkler listelenmiştir:

- PHP kurulumu için: [`https://www.php.net/manual/tr/install.php`](https://www.php.net/manual/tr/install.php)
- Laravel kurulumu için: [`https://laravel.com/docs/8.x/installation`](https://laravel.com/docs/8.x/installation)
- MySQL kurulumu için: [`https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/`](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/)
- Composer kurulumu için: [`https://getcomposer.org/download/`](https://getcomposer.org/download/)
- NPM kurulumu için: [`https://www.npmjs.com/get-npm`](https://www.npmjs.com/get-npm)

## Projeyi Çalıştırma
İlk olarak projeyi klonlayın veya dosyaları `.zip` olarak indirip dizine çıkarınız. Klonlamak için:
`git clone https://github.com/fatihes1/online-quiz-project-laravel.git`
Proje dizinini açınız ve gerekle Node modüllerini kurmak için aşağıdaki komut satırını çalıştırın:
`npm i`
Composer paketleri kurmak ve güncellemek için aşağıdaki kodları komut satırına sırayla giriniz:
`composer install`
`composer update`
Veri tabanı oluşturma işlemi için öncelikle proje dizininde bulunan `.env` dosyasını düzenlemek üzere açınız ve `DB_PASSWORD` değişkenine MySQL şifrenizi atayın. Ardından `localhost/phpmyadmin` adresine giderek `quiz` adında bir veri tabanı oluşturun. Bu aşamadan sonra izleyebileceğiniz iki yol bulunmaktadır. 
- Proje dizininde bulunan `SQL_FILE_HERE` klasöründeki `quiz.sql` dosyasını oluşturduğunuz veri tabanında içeri aktarabilirsiniz.

veya

- komut satırında `php artisan migrate` komutunu çalıştırabilirsiniz.

Son olarak projeyi sunucuda çalıştırmak için aşağıdaki kodu komut satırında çalıştırınız.
`php artisan serve`
Tüm bu işlemlerin sonrasında proje `127.0.0.1/8000` veya `localhost:8000` adresinde çalışacaktır.
## Projede Kullanılan Mimari ve Teknolojiler

#### **MVC (Model-View-Controller) :**
Model-View-Controller (MVC), yazılım mühendisliğinde kullanılan bir **mimari desen**dir. Kullanıcıya yüklü miktarda verinin sunulduğu karmaşık uygulamalarda veri ve gösterimin soyutlanması esasına dayanır. Böylece veriler (*İngilizce: model*) ve kullanıcı arayüzü (*İngilizce: view*), birbirini etkilemeden kontrolcü (*İngilizce: controller*) adı verilen ara bileşenle veri gösterimi, kullanıcı etkileşiminden veri erişimi ve iş mantığını çıkarma suretiyle çözümlenmektedir.
<hr>

#### **Laravel 8 :**
Bildiğiniz üzere **PHP** dilinin içerisinde kullanıcıların işlerini kolaylaştıran ve güvenlik açısından destek sağlayan birçok **framework** bulunur. ”Web Sanatçılarının PHP Framework’ü” sloganıyla Laravel bu **framework** yapılarında ilk sıralarda gelir. Web uygulamaları geliştirilirken büyük bir kullanım oranına sahiptir.

**Laravel**  ile projelerimizin hazırlanmasını hızlandırıp, çok zaman harcadığınız işlemleri kolayca yapabilirsiniz. Örneğin oturum yönetimi, caching ve kullanıcı doğrulama gibi işlemleri kolayca hazırlayabilirsiniz.

Açık kaynak kodlu bir framework olan  **MVC**  yapısıyla zenginleştirilmiştir.
Daha fazla bilgi için, [tıklayınız](https://laravel.com/docs/8.x/).
<hr>

#### **Laravel Jetstream**
Laravel Jetstream, önceki sürümlerde bulunan mevcut Laravel UI iskelesini geliştirir. Oturum açma, kayıt, e-posta doğrulama, iki faktörlü kimlik doğrulama, oturum yönetimi, Laravel aracılığıyla API desteği ve ekip yönetimi dahil olmak üzere yeni projeler için bir başlangıç ​​noktası sağlar.
Daha fazla bilgi için, [tıklayınız](https://github.com/laravel/jetstream)

<hr>

#### **Bootstrap 5**
Bootstrap, HTML, [CSS](https://www.argenova.com.tr/css "CSS") ve [JavaScript](https://www.argenova.com.tr/javascript "JavaScript") ile yazılmış kullanışlı, yeniden kullanılabilir kod parçalarından oluşan dev bir koleksiyondur. Ayrıca, geliştiricilerin ve tasarımcıların hızla tam olarak duyarlı web siteleri oluşturmasını sağlayan bir frameworktür.
Daha fazla bilgi için, [tıklayınız](https://getbootstrap.com/docs/5.0/getting-started/introduction/)
<hr>

#### **JQuery**
Dünyada en çok kullanılan JavaScript kütüphanesi olan JQuery'in amacı  JavaScript  dilini internet üzerinden kolayca kullanılabilmeyi sağlayan ücretsiz ve açık kaynaklı bir teknoloji sunmaktır.

JQuery'nin sağladığı en büyük avantajlardan biri tutarlı bir şekilde bütün tarayıcılarda çalışmasıdır, bu sebeple tüm ortamlarda rahatlıkla kullanılabilme imkanı sunmaktadır.

Daha fazla bilgi için, [tıklayınız](https://jquery.com/)

<hr>

#### **MySQL**
MySQL bir ilişkisel veri tabanı olarak, 1995 yılında kullanıma sürülen en popüler açık kaynaklı ilişkisel veri tabanı yönetim sisteminden biridir.Güçlü bir veri tabanı yönetim sistemi olan MySQL veri tabanı gerektiren hemen hemen her ortamda rahatlıkla kullanılabilir. Ama özellikle web sunucularında en çok kullanılan veritabanıdır, asp, php gibi birçok web programlama dili ile kullanılabilir.

Daha fazla bilgi için, [tıklayınız](https://www.mysql.com/)

## Proje Görselleri
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

## Yazar
`Fatih Es` Beni aşağıdaki platformlardan takip edebilirsiniz.
<br>

[![](https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/fatihes/)
[![](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/fatihtech/)
[![](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/channel/UCpMnisdqsNAGzJfQBkBaOKg)
[![](https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white)](https://fatihes.medium.com/)
