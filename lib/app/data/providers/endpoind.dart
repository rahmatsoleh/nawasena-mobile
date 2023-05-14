class Endpoint {
// Base Url
  // static String baseUrl = 'https://nawasena-api-production.up.railway.app/api/';
  static String baseUrl = 'https://6d2f-139-255-11-82.ngrok-free.app/api/';
  static String login = '${baseUrl}auth/login';
  static String register = '${baseUrl}auth/register';
  static String category = '${baseUrl}category-product';
  static String service = '${baseUrl}provider-service';
  static String history = '${baseUrl}history-service';
  static String user = '${baseUrl}auth/me';

  static serviceById(String id) {
    final services = '${baseUrl}provider-service?categoryProductId=$id';
    return services;
  }

  static detailService(String id) {
    final service = '${baseUrl}provider-detail/$id';
    return service;
  }
}
