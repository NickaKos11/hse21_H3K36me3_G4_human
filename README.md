# hse21_H3K36me3_G4_human
Целью работы над проектом является поиск и изучение участков генома, где гистоновая метка H3K36me3 присутствует в местах образования вторичной структры ДНК G4.

#### Гистограмма длин участков до конвертации (версия генома human(hg38), ChIP-seq эксперимент ENCFF655QDU) 
Количество пиков - 147306 

![alt-text](https://github.com/NickaKos11/hse21_H3K36me3_G4_human/raw/main/images/len_hist.H3K36me3_HEK293.ENCFF655QDU.hg38.png)

#### Гистограмма длин участков после конвертации (версия генома human(hg19), ChIP-seq эксперимент ENCFF655QDU) 
Количество пиков - 147202 

![alt-text](https://github.com/NickaKos11/hse21_H3K36me3_G4_human/raw/main/images/len_hist.H3K36me3_HEK293.ENCFF655QDU.hg19.png)

#### Гистограмма длин участков до конвертации (версия генома human(hg38), ChIP-seq эксперимент ENCFF257ZFX)
Количество пиков - 70267 

![alt-text](https://github.com/NickaKos11/hse21_H3K36me3_G4_human/raw/main/images/len_hist.H3K36me3_HEK293.ENCFF257ZFX.hg38.png)

#### Гистограмма длин участков после конвертации (версия генома human(hg19), ChIP-seq эксперимент ENCFF257ZFX)
Количество пиков - 70246

![alt-text](https://github.com/NickaKos11/hse21_H3K36me3_G4_human/raw/main/images/len_hist.H3K36me3_HEK293.ENCFF257ZFX.hg19.png)

Установим порог на длину 7000
#### Гистограмма длин участков после фильтрации (ChIP-seq эксперимент ENCFF655QDU)
Количество пиков - 145784

![alt-text](https://github.com/NickaKos11/hse21_H3K36me3_G4_human/raw/main/images/len_hist.H3K36me3_HEK293.ENCFF655QDU.hg19.filtered.png)

#### Гистограмма длин участков после фильтрации (ChIP-seq эксперимент ENCFF257ZFX)
Количество пиков - 70055

![alt-text](https://raw.githubusercontent.com/NickaKos11/hse21_H3K36me3_G4_human/main/images/len_hist.H3K36me3_HEK293.ENCFF257ZFX.hg19.filtered.png)

### Пики гистоновой метки относительно аннотированных генов (ChIP-seq эксперимент ENCFF655QDU): 
![alt-text](https://raw.githubusercontent.com/NickaKos11/hse21_H3K36me3_G4_human/main/images/chip_seeker.H3K36me3_HEK293.ENCFF655QDU.hg19.filtered.plotAnnoPie.png)

### Пики гистоновой метки относительно аннотированных генов (ChIP-seq эксперимент ENCFF257ZFX): 
![alt-text](https://github.com/NickaKos11/hse21_H3K36me3_G4_human/raw/main/images/chip_seeker.H3K36me3_HEK293.ENCFF257ZFX.hg19.filtered.plotAnnoPie.png)

Объединяем два набора отфильтрованных ChIP-seq пиков с помощью утилиты bedtools merge. Перед этим сортируем единый .bed файл.
Для этого используем команду 
"cat  *.filtered.bed  |   sort -k1,1 -k2,2n   |   bedtools merge   >  H3K36me3_HEK293.merge.hg19.bed"

Скачиваем файл со вторичной стр-рой ДНК G4_seq_Li_K 
(т.к файлов несколько, необходимо объединить их командой "cat  *.max.K.w50.25.bed  |   sort -k1,1 -k2,2n   |   bedtools merge   >  G4_seq_Li_K.bed")

### Распределение длин участков вторичной стр-ры ДНК:
Количество пиков - 428624

![alt-text](https://github.com/NickaKos11/hse21_H3K36me3_G4_human/raw/main/images/len_hist.G4_seq_Li_K.png)


