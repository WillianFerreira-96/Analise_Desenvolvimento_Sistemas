public class CalculadoraApp {
    public int somaInteiros(int a, int b){
        //return (a + b + 1); //Forçando Erro
        return (a + b);
    }

    public int divideInteiros(int a, int b){
        //return (a / b + 1); //Forçando Erro
        return (a / b);
    }

    public boolean testPar(int num){
        int resto = num % 2;
        if (resto == 0) {
            return  true;
        }else {
            return false;
        }
    }

    public int divideComException(int a, int b){
        if( b == 0 ){
            throw new ArithmeticException("NÃO é possivel dividir po ZERO");
        }
        return (a / b);
    }

    public int descontoProgrssivo(int quantidade){
        if(quantidade <= 10){
            return 5;
        }else if(quantidade <= 20){
            return 10;
        }else {
            return 15;
        }
    }

    public static void main(String[] args){
        CalculadoraApp calc = new CalculadoraApp();

        //System.out.println(calc.somaInteiros(7,3));
        //System.out.println(calc.divideInteiros(10,2));
        int numero = 2;

        String resposta = calc.testPar(numero)?"Par":"Impar";
        System.out.println(resposta);
    }
}
