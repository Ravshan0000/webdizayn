import 'package:flutter_books/presentation/ui/resources/images.dart';

import '../domains/entitins/book/book.dart';


List<Book> books=const[
   Book(title: "Web Dezayn",
      authorName: "Ulmasbek Yuldashev",
      languade: "O'zbek",
      desriiption: """n. Unda Web dizayn fani boʻyicha 
       nazariy materiallar, topshiriqlar, bilimlarni nazorat qilish uchun savollar majmuasi
       kabilar keltirilgan. Ushbu oʻquv qoʻllanma ham bugungi kunning zamonaviy
       bilimlari bilan yangilangan va qayta ishlangan boʻlib, unda fanning nazariy va
       amaliy jihatlariga alohida e’tibor qaratilgan.""",
      image: AppImages.web,
      pages: 209,
      publishedYear: 2022,
       path:"assets/books/Web dizayn.pdf"
   ),

   Book(title: "Kompyuter Grfikasi",
      authorName: "Ulmasbek Yuldashev",
      languade: "O'zbek",
      desriiption: """ Unda Kompyuter grafikasi va Web dizayn fani 
       boʻyicha nazariy materiallar, topshiriqlar, bilimlarni nazorat qilish uchun savollar
       majmuasi kabilar keltirilgan. Ushbu oʻquv qoʻllanma ham bugungi kunning
       zamonaviy bilimlari bilan yangilangan va qayta ishlangan boʻlib, unda fanning
       nazariy va amaliy jihatlariga alohida e’tibor qaratilgan. """,
      image: AppImages.kampyuter,
      pages: 291,
      publishedYear: 2022,
       path:"assets/books/Kompyuter.pdf"),


   Book(title: "HTML",
      authorName: "Nomalum",
      languade: "O'zbek",
      desriiption: """Ushbu qo’llanma Web dizayner va Developer bo’lishni xohlovchilar uchun ishlab chiqildi va 
       Web dasturlash sohasining boshlang’ich yo’nalishi bo’lgan HTML ni oson va qiziqarli tarzda o’rganib
       olishingizga yrdam beradi. Unda HTML haqidagi barcha mavzular va detallar oson va qiziqarli tarzda
       tushuntirilgan hamda amaliy misollar bilan ko’rsatib berilgan. Ushbu qo’llanma sizga HTML ni tushunib
       olishingizga va o’z ishingizni boshlashingiz uchun yetarlicha bilim beradi va u orqali siz yuori darajadagi
       bilim sohibiga aylanishingiz mumkin.""",
      image: AppImages.html,
      pages: 141,
      publishedYear: 2023,
       path:"assets/books/html.pdf"),

   Book(title: "PHP",
      authorName: " David Sklar",
      languade: "English",
      desriiption: """Nutshell Handbook, the Nutshell Handbook logo, and the O’Reilly logo are registered trademarks of O’Reilly
       Media, Inc. PHP Cookbook, the image of a Galapagos land iguana, and related trade dress are trademarks
       of O’Reilly Media, Inc.
       Many of the designations used by manufacturers and sellers to distinguish their products are claimed as
       trademarks. Where those designations appear in this book, and O’Reilly Media, Inc. was aware of a trademark
       claim, the designations have been printed in caps or initial caps""",
      image: AppImages.php,
      pages: 787,
      publishedYear: 2014,
       path:"assets/books/PHP.pdf"),

   Book(title: "CSS",
      authorName: "Грег Сидельников",
      languade: "Russia",
      desriiption: """Информация, содержащаяся в данной книге, получена из источников, рассматриваемых издательством 
      как надежные. Тем не менее, имея в виду возможные человеческие или технические ошибки, издательство не может гарантировать абсолютную точность и полноту приводимых сведений и не несет
       ответственности за возможные ошибки, связанные с использованием книги. Издательство не несет ответственности за доступность материалов, ссылки на которые вы можете найти в этой книге. На момент
       подготовки книги к изданию все ссылки на интернет-ресурсы были действующими.""",
      image: AppImages.css,
      pages: 222,
      publishedYear: 2021,
       path:"assets/books/CSS.pdf"),
   Book(title: "Bootstrap",
       authorName: "Ulmasbek Yuldashev",
       languade: "O'zbek",
       desriiption: """Twitter Bootstrap is the most popular front end frameworks currently. It is sleek, intuitive, and powerful 
       mobile first front-end framework for faster and easier web development. It uses HTML, CSS and
       Javascript. """,
       image: AppImages.bootstrap,
       pages: 192,
       publishedYear: 2020,
       path:"assets/books/bootstrap.pdf"),




];