class Surah {
  late int number;
  late String name;
  late String englishName;
  late String englishNameTranslation;
  late int numberOfAyahs;
  late String revelationType;

  Surah(
      {required this.number,
        required this.name,
        required this.englishName,
        required this.englishNameTranslation,
        required this.numberOfAyahs,
        required this.revelationType});

  Surah.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    numberOfAyahs = json['numberOfAyahs'];
    revelationType = json['revelationType'];

  }

}