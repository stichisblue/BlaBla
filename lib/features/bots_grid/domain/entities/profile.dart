class Profile {
  String? name;
  String? filePath;
  Profile({
    this.name,
    this.filePath,
  });

  @override
  String toString() => 'Profile(name: $name, filePath: $filePath)';
}
