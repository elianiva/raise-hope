enum TypeOfHelp {
  fundRasingSupport("Fund Raising Support"),
  eventPlanning("Event Planning"),
  animalWalfare("Animal Welfare"),
  education("Education"),
  farm("Farm");

  final String label;
  const TypeOfHelp(this.label);

  @override
  String toString() {
    super.toString();
    return label;
  }
}
