abstract class FailureSerach implements Exception {}

class InvalidTextError implements FailureSerach {}

class DataSourceError implements FailureSerach {
  final String message;
  DataSourceError({this.message});
}
