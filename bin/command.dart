import 'package:args/args.dart';

Future main(List<String> arguments) async {
  int exitCode = 0;
  var parser = ArgParser();
  parser.addOption('event', abbr: 'e');
  var argResults = parser.parse(arguments);
  print(argResults['event']);
  var uri = Uri.parse(argResults['event']);
  // var uri = Uri.parse(argResults['event'][0]);
  print(uri.scheme);
  print(uri.host);
  print(uri.pathSegments);
  print(uri.path);

}