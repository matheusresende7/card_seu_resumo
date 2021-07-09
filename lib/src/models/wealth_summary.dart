class WealthSummary {

  double total;
  int id;
  bool hasHistory;
  double cdi;
  double gain;
  double profitability;

  WealthSummary({
    this.total,
    this.id,
    this.hasHistory,
    this.cdi,
    this.gain,
    this.profitability
  });

  WealthSummary.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    id = json['id'];
    hasHistory = json['hasHistory'];
    cdi = json['cdi'];
    gain = json['gain'];
    profitability = json['profitability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['id'] = this.id;
    data['hasHistory'] = this.hasHistory;
    data['cdi'] = this.cdi;
    data['gain'] = this.gain;
    data['profitability'] = this.profitability;
    return data;
  }

}