package br.ufscar.dc.dsw

class Transacao {

    public static final String CREDITO = "CREDITO"
    public static final String DEBITO = "DEBITO"

    static constraints = {
        contaCliente nullable: false
        caixaEletronico nullable: false
        valor nullable: false, min: 0.1d
        data nullable: false
        quem nullable: flase
        motivo nullable: false
        tipo nullable: false, inList: [CREDITO, DEBITO]
    }

    Date data
    double valor
    String quem
    String motivo
    String tipo
    ContaCliente contaCliente
    CaixaEletronico caixaEletronico

    String toString() {
        return "[${tipo}] - ${motivo} - R\$ ${valor}"
    }
}
