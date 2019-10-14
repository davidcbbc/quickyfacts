import 'dart:convert';

import 'package:http/http.dart' as http;




String url = 'https://numbersapi.p.rapidapi.com';

Future<String> getMessage(String value , String type) async {
  return http.get(
    url + '$value/$type',
    headers: {'x-rapidapi-host' : 'numbersapi.p.rapidapi.com',
              'x-rapidapi-key' : '83b9004eeemsh5208840c02aaabdp12c7f0jsn1de6d1ad7107'}
  ).then((http.Response response) {
    final int statusCode = response.statusCode;
    print('Status Code : $statusCode ');
    if(statusCode < 200 || statusCode >= 400 || json == null) {
      throw new Exception('Error while fetching data on getMessage() ');
    }
    return response.body;       // Serializes the response to get an instance from Coin
  });
}