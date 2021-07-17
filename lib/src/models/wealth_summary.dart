class WealthSummary {

  final double? total;
  final dynamic id;
  final bool? hasHistory;
  final double? cdi;
  final double? gain;
  final double? profitability;

  WealthSummary({
    this.total,
    this.id,
    this.hasHistory,
    this.cdi,
    this.gain,
    this.profitability
  });

  factory WealthSummary.fromJson(Map json) {
    return WealthSummary(
        total: json['total'],
        id: json['id'],
        hasHistory: json['hasHistory'],
        cdi: json['cdi'],
        gain: json['gain'],
        profitability: json['profitability']
    );
  }

  Map toJson() {
    return {
      total: total,
      id: id,
      hasHistory: hasHistory,
      cdi: cdi,
      gain: gain,
      profitability: profitability,
    };
  }

}