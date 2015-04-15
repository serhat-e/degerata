#!/bin/bash
echo "Dosya Adını ve Yolunu girin: (Örneğin:/etc/var/test.conf)"
read dosyaadi
echo "Dosya Adı: $dosyaadi"
echo "Dosyada değiştirilecek eski değeri tam olarak girin: (Örneğin:timeout_limit=90)"
read eskideger
echo "Değişecek olan değer: $eskideger"
echo "Yeni değeri tam olarak girin: (Örneğin:timeout_limit=120)"
read yenideger
cp $dosyaadi $dosyaadi"_orj"
echo "Orjinal dosyanın yedeği alındı..."
sed "s/$eskideger/$yenideger/g" $dosyaadi > $dosyaadi"2"
mv $dosyaadi"2" $dosyaadi
echo "Değişiklik yapıldı: Dosya içeriğini okumak istermisiniz? [e/h]"
read onay

if [ $onay="e" ];then
 cat $dosyaadi
else
 echo "İşlem Tamamlandı"
fi
