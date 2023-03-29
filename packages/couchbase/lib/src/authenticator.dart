/// An [Authenticator] is used to authenticate with a cluster.
///
/// {@category Authentication}
abstract class Authenticator {
  const Authenticator();
}

/// [Authenticator] which uses an RBAC [username] and [password] to authenticate
/// with a cluster.
///
/// {@category Authentication}
class PasswordAuthenticator extends Authenticator {
  const PasswordAuthenticator({
    required this.username,
    required this.password,
    this.allowedSaslMechanisms,
  });

  /// Creates a LDAP compatible password authenticator which is **insecure** if
  /// not used with TLS.
  ///
  /// Please note that this is **insecure** and will leak user credentials on
  /// the wire to eavesdroppers. This should only be enabled in trusted
  /// environments.
  const PasswordAuthenticator.ldapCompatible({
    required this.username,
    required this.password,
  }) : allowedSaslMechanisms = const ['PLAIN'];

  /// The username to authenticate with.
  final String username;

  /// The password to authenticate with.
  final String password;

  /// The SASL mechanisms to authenticate with.
  final List<String>? allowedSaslMechanisms;
}

/// [Authenticator] which uses an SSL certificate and key to authenticate with
/// a cluster.
///
/// {@category Authentication}
class CertificateAuthenticator implements Authenticator {
  CertificateAuthenticator({
    required this.certificatePath,
    required this.keyPath,
  });

  /// The path to the certificate which should be used for certificate
  /// authentication.
  final String certificatePath;

  /// The path to the key which should be used for certificate authentication.
  final String keyPath;
}
