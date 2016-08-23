package br.ufscar.dc.dsw

class CaixaEletronico {

    static hasMany = [transacoes: Transacao]

    static constraints = {
        banco nullable: false
        endereco nullable: false
    }

    Banco banco
    Endereco endereco

    String toString() {
        return "${banco} - ${endereco}"
    }
}
