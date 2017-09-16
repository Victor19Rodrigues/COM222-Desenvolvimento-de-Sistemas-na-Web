
public class Conta {

    private int nroConta;
    private String Primeiro_Corr;
    private String Segundo_Corr;
    private String Terceiro_Corr;
    private Double saldo;
    private Double limite;

    public int getNroConta() {
        return nroConta;
    }

    public void setNroConta(int nroConta) {
        this.nroConta = nroConta;
    }

    public String getPrimeiro_Corr() {
        return Primeiro_Corr;
    }

    public void setPrimeiro_Corr(String Primeiro_Corr) {
        this.Primeiro_Corr = Primeiro_Corr;
    }

    public String getSegundo_Corr() {
        return Segundo_Corr;
    }

    public void setSegundo_Corr(String Segundo_Corr) {
        this.Segundo_Corr = Segundo_Corr;
    }

    public String getTerceiro_Corr() {
        return Terceiro_Corr;
    }

    public void setTerceiro_Corr(String Terceiro_Corr) {
        this.Terceiro_Corr = Terceiro_Corr;
    }

    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }

    public Double getLimite() {
        return limite;
    }

    public void setLimite(Double limite) {
        this.limite = limite;
    }

}
