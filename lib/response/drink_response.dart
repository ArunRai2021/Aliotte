import 'package:json_annotation/json_annotation.dart';
part "drink_response.g.dart";

@JsonSerializable()
class DrinkResponse {
  DrinkResponse({
     this.drinks,
  });
   List<Drinks>? drinks;

  DrinkResponse.fromJson(Map<String, dynamic> json){
    drinks = List.from(json['drinks']).map((e)=>Drinks.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['drinks'] = drinks?.map((e)=>e.toJson()).toList();
    return _data;
  }
}
@JsonSerializable()
class Drinks {
  Drinks({
     this.idDrink,
     this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
     this.strCategory,
    this.strIBA,
     this.strAlcoholic,
     this.strGlass,
     this.strInstructions,
    this.strInstructionsES,
    this.strInstructionsDE,
    this.strInstructionsFR,
     this.strInstructionsIT,
    this.strInstructionsZHHANS,
    this.strInstructionsZHHANT,
     this.strDrinkThumb,
     this.strIngredient1,
     this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
     this.strMeasure1,
     this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
     this.strCreativeCommonsConfirmed,
    this.dateModified,
  });
   String? idDrink;
   String? strDrink;
   dynamic strDrinkAlternate;
   String? strTags;
   dynamic strVideo;
   String? strCategory;
   dynamic strIBA;
   String? strAlcoholic;
   String? strGlass;
   String? strInstructions;
   dynamic strInstructionsES;
   String? strInstructionsDE;
   dynamic strInstructionsFR;
   String? strInstructionsIT;
   dynamic strInstructionsZHHANS;
   dynamic strInstructionsZHHANT;
   String? strDrinkThumb;
   String? strIngredient1;
   String? strIngredient2;
   String? strIngredient3;
   String? strIngredient4;
   String? strIngredient5;
   String? strIngredient6;
   dynamic strIngredient7;
   dynamic strIngredient8;
   dynamic strIngredient9;
   dynamic strIngredient10;
   dynamic strIngredient11;
   dynamic strIngredient12;
   dynamic strIngredient13;
   dynamic strIngredient14;
   dynamic strIngredient15;
   String? strMeasure1;
   String? strMeasure2;
   String? strMeasure3;
   String? strMeasure4;
   String? strMeasure5;
   String? strMeasure6;
   dynamic strMeasure7;
   dynamic strMeasure8;
   dynamic strMeasure9;
   dynamic strMeasure10;
   dynamic strMeasure11;
   dynamic strMeasure12;
   dynamic strMeasure13;
   dynamic strMeasure14;
   dynamic strMeasure15;
   dynamic strImageSource;
   dynamic strImageAttribution;
   String? strCreativeCommonsConfirmed;
   String? dateModified;

  Drinks.fromJson(Map<String, dynamic> json){
    idDrink = json['idDrink'];
    strDrink = json['strDrink'];
    strDrinkAlternate = null;
    strTags = null;
    strVideo = null;
    strCategory = json['strCategory'];
    strIBA = null;
    strAlcoholic = json['strAlcoholic'];
    strGlass = json['strGlass'];
    strInstructions = json['strInstructions'];
    strInstructionsES = null;
    strInstructionsDE = null;
    strInstructionsFR = null;
    strInstructionsIT = json['strInstructionsIT'];
    strInstructionsZHHANS = null;
    strInstructionsZHHANT = null;
    strDrinkThumb = json['strDrinkThumb'];
    strIngredient1 = json['strIngredient1'];
    strIngredient2 = json['strIngredient2'];
    strIngredient3 = null;
    strIngredient4 = null;
    strIngredient5 = null;
    strIngredient6 = null;
    strIngredient7 = null;
    strIngredient8 = null;
    strIngredient9 = null;
    strIngredient10 = null;
    strIngredient11 = null;
    strIngredient12 = null;
    strIngredient13 = null;
    strIngredient14 = null;
    strIngredient15 = null;
    strMeasure1 = json['strMeasure1'];
    strMeasure2 = json['strMeasure2'];
    strMeasure3 = null;
    strMeasure4 = null;
    strMeasure5 = null;
    strMeasure6 = null;
    strMeasure7 = null;
    strMeasure8 = null;
    strMeasure9 = null;
    strMeasure10 = null;
    strMeasure11 = null;
    strMeasure12 = null;
    strMeasure13 = null;
    strMeasure14 = null;
    strMeasure15 = null;
    strImageSource = null;
    strImageAttribution = null;
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    dateModified = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['idDrink'] = idDrink;
    _data['strDrink'] = strDrink;
    _data['strDrinkAlternate'] = strDrinkAlternate;
    _data['strTags'] = strTags;
    _data['strVideo'] = strVideo;
    _data['strCategory'] = strCategory;
    _data['strIBA'] = strIBA;
    _data['strAlcoholic'] = strAlcoholic;
    _data['strGlass'] = strGlass;
    _data['strInstructions'] = strInstructions;
    _data['strInstructionsES'] = strInstructionsES;
    _data['strInstructionsDE'] = strInstructionsDE;
    _data['strInstructionsFR'] = strInstructionsFR;
    _data['strInstructionsIT'] = strInstructionsIT;
    _data['strInstructionsZH-HANS'] = strInstructionsZHHANS;
    _data['strInstructionsZH-HANT'] = strInstructionsZHHANT;
    _data['strDrinkThumb'] = strDrinkThumb;
    _data['strIngredient1'] = strIngredient1;
    _data['strIngredient2'] = strIngredient2;
    _data['strIngredient3'] = strIngredient3;
    _data['strIngredient4'] = strIngredient4;
    _data['strIngredient5'] = strIngredient5;
    _data['strIngredient6'] = strIngredient6;
    _data['strIngredient7'] = strIngredient7;
    _data['strIngredient8'] = strIngredient8;
    _data['strIngredient9'] = strIngredient9;
    _data['strIngredient10'] = strIngredient10;
    _data['strIngredient11'] = strIngredient11;
    _data['strIngredient12'] = strIngredient12;
    _data['strIngredient13'] = strIngredient13;
    _data['strIngredient14'] = strIngredient14;
    _data['strIngredient15'] = strIngredient15;
    _data['strMeasure1'] = strMeasure1;
    _data['strMeasure2'] = strMeasure2;
    _data['strMeasure3'] = strMeasure3;
    _data['strMeasure4'] = strMeasure4;
    _data['strMeasure5'] = strMeasure5;
    _data['strMeasure6'] = strMeasure6;
    _data['strMeasure7'] = strMeasure7;
    _data['strMeasure8'] = strMeasure8;
    _data['strMeasure9'] = strMeasure9;
    _data['strMeasure10'] = strMeasure10;
    _data['strMeasure11'] = strMeasure11;
    _data['strMeasure12'] = strMeasure12;
    _data['strMeasure13'] = strMeasure13;
    _data['strMeasure14'] = strMeasure14;
    _data['strMeasure15'] = strMeasure15;
    _data['strImageSource'] = strImageSource;
    _data['strImageAttribution'] = strImageAttribution;
    _data['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    _data['dateModified'] = dateModified;
    return _data;
  }
}