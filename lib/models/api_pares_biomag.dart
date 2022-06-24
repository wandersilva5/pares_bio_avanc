class ParesBiomag {
  int? id;
  String? parBiomagnetico;
  String? tipo;
  String? caracteristicas;
  String? nomeImagem;

  ParesBiomag({
    this.id,
    this.parBiomagnetico,
    this.tipo,
    this.caracteristicas,
    this.nomeImagem,
  });

  ParesBiomag.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parBiomagnetico = json['parBiomagnetico'];
    tipo = json['tipo'];
    caracteristicas = json['caracteristicas'];
    nomeImagem = json['nomeImagem'];
  }

  get data => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['parBiomagnetico'] = parBiomagnetico;
    data['tipo'] = tipo;
    data['caracteristicas'] = caracteristicas;
    data['nomeImagem'] = nomeImagem;

    return data;
  }
}
