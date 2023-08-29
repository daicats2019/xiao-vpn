import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/network/base_request_http.dart';
import '../../domain/model/index.dart';
import '../../utils/config.dart';

@injectable
class VpnRemote {
  Future<List<VpnServerModel>> getVpnServerList() async {
    const url = '${Config.baseUrl}/api/servers/';
    final uri = Uri.parse(url);
    final response = await baseRequest.get(uri);
    final results = <VpnServerModel>[];
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'];
      for (final json in data) {
        final vpnServer = VpnServerModel.fromJson(json);
        results.add(vpnServer);
      }
      return results;
    } else {
      throw HttpException('Something went wrong code ${response.statusCode}');
    }
  }

  Future<File> download(String url) async {
    final directory = await getTemporaryDirectory();
    final filePath = '${directory.path}vpn.html';
    final response = await http.get(Uri.parse(url));
    return File(filePath).writeAsBytes(response.bodyBytes);
  }
}
