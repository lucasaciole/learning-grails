package br.ufscar.dc.dsw

class Banco {

    static hasMany = [agencias: Agencia, caixas: CaixaEletronico]

    static constraints = {
        numero unique: true, min: 0
        nome blank: false, size: 1..20
        CNPJ (blank: false, unique: true, cnpj: true, size: 18..18)
    }

    int numero
    String nome
    String CNPJ

    String toString() {
        return nome
    }
}
