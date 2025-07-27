/// The error codes that can be returned by the Notion API.
///
/// See: https://developers.notion.com/reference/status-codes#error-codes
enum ResponseErrorCode {
  invalidJson(
    httpStatusCode: 400,
    code: 'invalid_json',
    description: 'The request body colud not be decoded as JSON.',
  ),
  invalidRequestUrl(
    httpStatusCode: 400,
    code: 'invalid_request_url',
    description: 'The request URL is not valid.',
  ),
  invalidRequest(
    httpStatusCode: 400,
    code: 'invalid_request',
    description: 'The request is not supported.',
  ),
  invalidGrant(
    httpStatusCode: 400,
    code: 'invalid_grant',
    description:
        'The provided authorization grant (e.g., authorization code, resource owner credentials) or refresh token is invalid, expired, revoked, does not match the redirection URI used in the authorization request, or was issued to another client. See OAuth 2.0 documentation for more information.',
  ),
  validationError(
    httpStatusCode: 400,
    code: 'validation_error',
    description:
        'The request body does not match the schema for the expected parameters. Check the "message" property for more details.',
  ),
  missingVersion(
    httpStatusCode: 400,
    code: 'missing_version',
    description:
        'The request is missing the required Notion-Version header. See Versioning.',
  ),
  unauthorized(
    httpStatusCode: 401,
    code: 'unauthorized',
    description: 'The bearer token is not valid.',
  ),
  restrictedResource(
    httpStatusCode: 403,
    code: 'restricted_resource',
    description:
        'Given the bearer token used, the client doesn\'t have permission to perform this operation.',
  ),
  objectNotFound(
    httpStatusCode: 404,
    code: 'object_not_found',
    description:
        'Given the bearer token used, the resource does not exist. This error can also indicate that the resource has not been shared with owner of the bearer token.',
  ),
  conflictError(
    httpStatusCode: 409,
    code: 'conflict_error',
    description:
        'The transaction could not be completed, potentially due to a data collision. Make sure the parameters are up to date and try again.',
  ),
  rateLimited(
    httpStatusCode: 429,
    code: 'rate_limited',
    description:
        'This request exceeds the number of requests allowed. Slow down and try again. More details on rate limits.',
  ),
  internalServerError(
    httpStatusCode: 500,
    code: 'internal_server_error',
    description: 'An unexpected error occurred. Reach out to Notion support.',
  ),
  badGateway(
    httpStatusCode: 502,
    code: 'bad_gateway',
    description:
        'Notion encountered an issue while attempting to complete this request (e.g., failed to establish a connection with an upstream server). Please try again.',
  ),
  serviceUnavailable(
    httpStatusCode: 503,
    code: 'service_unavailable',
    description:
        'Notion is unavailable. This can occur when the time to respond to a request takes longer than 60 seconds, the maximum request timeout. Please try again later.',
  ),
  databaseConnectionUnavailable(
    httpStatusCode: 503,
    code: 'database_connection_unavailable',
    description:
        'Notion\'s database is unavailable or is not in a state that can be queried. Please try again later.',
  ),
  gatewayTimeout(
    httpStatusCode: 504,
    code: 'gateway_timeout',
    description:
        'Notion timed out while attempting to complete this request. Please try again later.',
  ),
  ;

  const ResponseErrorCode({
    required this.code,
    required this.httpStatusCode,
    required this.description,
  });

  final String code;
  final int httpStatusCode;
  final String description;
}
