package br.ufscar.dc.dsw

class Agencia {

    static hasMany = [gerentes: Gerente]

    static constraints = {
        banco nullable: false
        numero blank: false, min: 0
        nome blank: false, size: 1..20
        endereco nullable: false
    }

    int numero
    String nome
    Endereco endereco
    Banco banco

    String toString() {
        return "${numero} - ${banco}"
    }
}
