import 'package:email_validator/email_validator.dart';
import 'dart:async';
mixin Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(EmailValidator.validate(email)){
        sink.add(email);
      }
      else{
        sink.addError('E-mail inválido');
      }
    }
  );

  //escreva um validador de senha. Para ser válida, uma senha deve ter mais de 3 caracteres.
  //final validatePassword = 
}