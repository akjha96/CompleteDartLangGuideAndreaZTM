void main() {
  const emails = [
    'abc@abc.com',
    'ubuntu@gmail.com',
    'f1@yahoo.com',
    'head@asdf.com'
  ];
  const knownDomains = ['yahoo.com', 'gmail.com'];
  final unknownDomains = getunknownDomains(emails, knownDomains);
  print(unknownDomains);
}

Iterable<String> getunknownDomains(
        List<String> emails, List<String> knownDomains) =>
    emails
        .map((email) => email.split('@').last)
        .where((domain) => !knownDomains.contains(domain));
