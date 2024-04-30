class Contato {
  String nome;
  String email;
  String imagemUrl;
  bool favoritado;

  Contato(this.nome, this.email, this.imagemUrl, {this.favoritado = false});
}