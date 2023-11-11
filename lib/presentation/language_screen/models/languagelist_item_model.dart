import '../../../core/app_export.dart';/// This class is used in the [languagelist_item_widget] screen.
class LanguagelistItemModel {LanguagelistItemModel({this.english, this.id, }) { english = english  ?? Rx(false);id = id  ?? Rx(""); }

Rx<bool>? english;

Rx<String>? id;

 }
