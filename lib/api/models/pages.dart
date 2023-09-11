class Pages {
  late int code;
  late String status;
  late Data data;

  Pages({required this.code, required this.status, required this.data});

  Pages.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    data = (json['data'] != null ? Data.fromJson(json['data']) : null)!;
  }
}

class Data {
  late int number;
  late List<Ayahs> ayahs;
  late Surahs surahs;
  late Edition edition;

  Data.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    if (json.containsKey('ayahs')) {
      ayahs = <Ayahs>[];
      json['ayahs'].forEach((v) {
        ayahs.add(Ayahs.fromJson(v));
      });
    }
    // surahs = (json['surahs'] != null ? Surahs.fromJson(json['surahs']) : null)!;
    if(json.containsKey('edition')){
      edition =  Edition.fromJson(json['edition']);
    }
  }
}

class Ayahs {
  late int number;
  late String text;
  late Surah surah;
  late int numberInSurah;
  late int juz;
  late int manzil;
  late int page;
  late int ruku;
  late int hizbQuarter;
  late bool sajda;

  Ayahs(
      {required this.number,
        required this.text,
        required this.surah,
        required this.numberInSurah,
        required this.juz,
        required this.manzil,
        required this.page,
        required this.ruku,
        required this.hizbQuarter,
        required this.sajda});

  Ayahs.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    text = json['text'];
    surah = (json['surah'] != null ? Surah.fromJson(json['surah']) : null)!;
    numberInSurah = json['numberInSurah'];
    juz = json['juz'];
    manzil = json['manzil'];
    page = json['page'];
    ruku = json['ruku'];
    hizbQuarter = json['hizbQuarter'];
    sajda = json['sajda'];
  }
}

class Surah {
  late int number;
  late String name;
  late String englishName;
  late String englishNameTranslation;
  late String revelationType;
  late int numberOfAyahs;

  Surah(
      {required this.number,
        required this.name,
        required this.englishName,
        required this.englishNameTranslation,
        required this.revelationType,
        required this.numberOfAyahs});

  Surah.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    revelationType = json['revelationType'];
    numberOfAyahs = json['numberOfAyahs'];
  }
}

class Surahs {
  late Surah s1;

  Surahs({required this.s1});

  Surahs.fromJson(Map<String, dynamic> json) {
    s1 = (json['1'] != null ? Surah.fromJson(json['1']) : null)!;
  }
}

class Edition {
  late String identifier;
  late String language;
  late String name;
  late String englishName;
  late String format;
  late String type;
  late String direction;

  Edition.fromJson(Map<String, dynamic> json) {
    identifier = json['identifier'];
    language = json['language'];
    name = json['name'];
    englishName = json['englishName'];
    format = json['format'];
    type = json['type'];
    direction = json['direction'];
  }


}
