import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => 
  {
    'en_US': {
      'hello': 'Hello',
    },
    'ch_CH': {
      'hello': '你好'
    },
    'fr_FR': {
      'hello': 'Bonjour'
    }
  };
}