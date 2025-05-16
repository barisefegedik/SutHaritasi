Bu çalışma, bir futbol sezonunda bir oyuncunun attığı şutların saha üzerindeki konumlarını, şutların sonuçlarını ve her bir şutun gol beklentisi değerini (xG) görselleştirmektedir. Veriler Understat platformu üzerinden çekilmiş, analiz ve görselleştirme işlemleri ise R programlama dili kullanılarak gerçekleştirilmiştir.

📌 Kullanılan R Paketleri
tidyverse: Veri işleme ve düzenleme için temel paket grubu
worldfootballR: Understat API'si aracılığıyla futbol verilerini çekmek için
ggplot2: Görselleştirme oluşturmak için
ggsoccer: Futbol sahası çizimi için
ggimage: Görselleştirmeye logo gibi görseller eklemek için

📊 Görselleştirme Özellikleri
Şut koordinatları Understat formatından 100x100 saha ölçüsüne dönüştürülmüştür.
Her şut, result değişkenine göre farklı renklerle temsil edilmiştir (Gol, Aut, Blok vb.).
Golle sonuçlanan şutlar ayrı bir katmanla vurgulanmıştır (beyaz kenarlıklı yeşil iç dolgu).
xG değeri, şutların büyüklüğüyle orantılı olarak gösterilmiştir.
Takıma ait logo görseli saha üzerine yerleştirilmiştir (ggimage ile).

🧾 Açıklamalar
Başlık: ...... Şut Haritası
Alt Başlık: Şut Konumları | 2024/2025 Sezonu
Veri Kaynağı: Understat.com
Hazırlayan: Barış Efe Gedik
