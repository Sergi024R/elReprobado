import 'package:dio/dio.dart';
import 'package:el_reprobado/domain/dtos/message.dart';
import 'package:el_reprobado/infrastucture/entities/yes_no_entity.dart';

// https://quicktype.io/

class getYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final resultSet = await _dio.get('http://yesno.wtf/api');
    final yesNoEntity = YesNoEntity.fromJsonMap(resultSet.data);
    return Message(
        text: yesNoEntity.answer == 'yes' ? 'si' : 'no',
        imageUrl: yesNoEntity.image,
        fromWho: FromWho.hers);
  }
}
