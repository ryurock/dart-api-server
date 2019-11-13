import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:http_server/http_server.dart';


Future main() async {
  // VirtualDirectory staticFiles = VirtualDirectory('./public');

  Map<String, String> platformEnv = Platform.environment;
  var serverListenPort = int.parse(platformEnv['SERVER_LISTEN_PORT']);
  var serverListenAddress = platformEnv['SERVER_LISTEN_ADDRESS'];
  var server = await HttpServer.bind(
    serverListenAddress,
    serverListenPort,
  );

  print('Listening on localhost:${server.port}');


  await for (HttpRequest request in server) {
    _handleRequest(request);
  }
}

void _handleRequest(HttpRequest request) {
  try {
    print('request path: ${request.uri.path}');
    if (request.method == 'GET') {
      print(routes['get']);
      for (var route in routes['get']) {
        if (request.uri.path == route['path']) return route;
      }
      request.response
        ..statusCode = HttpStatus.notFound
        ..write('path: ${request.uri.path} not found')
        ..close();
    } else {
      request.response
        ..statusCode = HttpStatus.methodNotAllowed
        ..write('Unsupported request: ${request.method}.')
        ..close();
    }
  } catch (e) {
    print('Exception in handleRequest: $e');
  }
}

_resolvePath(String method, String path) {
  var config = loadYaml(File('config/api/route.yaml').readAsStringSync());
  var routes = config['routes'][method];
  for (var route in routes['get']) {
    if (path == route['path']) return route;
  }
  throw Exception('no match route');
}

// void handleGet(HttpRequest request) {
//   final guess = request.uri.queryParameters['q'];
//   final response = request.response;
//   response.statusCode = HttpStatus.ok;
//   if (guess == myNumber.toString()) {
//     response
//       ..writeln('true')
//       ..writeln("I'm thinking of another number.")
//       ..close();
//     myNumber = intGenerator.nextInt(10);
//     print("I'm thinking of another number: $myNumber");
//   } else {
//     response
//       ..writeln('false')
//       ..close();
//   }
// }
