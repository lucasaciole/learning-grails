package br.ufscar.dc.dsw

class ContaCliente {

    static hasMany = [transacoes: Transacao]

    static constraints = {
        cliente nullable: false
        conta nullable: false, unique: 'cliente'
        titular nullable: false
    }

    boolean titular
    Conta conta
    Cliente cliente

    String toString() {
        return "${cliente} X ${conta}"
    }
}
