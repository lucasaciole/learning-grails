import br.ufscar.dc.dsw.*

class BootStrap {

    def init = { servletContext ->
        def sp = new Estado(sigla: "SP", nome: "São Paulo")
        sp.save()
        if (sp.hasErrors()) {
            println sp.errors
        }

        println 'Populando estados - OK'

        def sanca = new Cidade(nome: "São Carlos", estado: sp)
        sanca.save()
        if(sanca.hasErrors()) {
            println sanca.errors
        }

        def sampa = new Cidade(nome: "São Paulo", estado: sp)
        sampa.save()
        if(sampa.hasErrors()) {
            println sampa.errors
        }

        println "Populando cidades - OK"

        def santander = new Banco(nome: 'Santander')

        def agencia = new Agencia(numero: 0024, nome: 'Agencia UFSCar', endereco: endereco, banco: santander)

        def gerente = new Gerente(nome: 'Lucas Aciole', rg: '43.796.003-1 SSP/SP', cpf:'368.845.198-86', agencia: agencia)
    }

    def destroy = {
    }
}
