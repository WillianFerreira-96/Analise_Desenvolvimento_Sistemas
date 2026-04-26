import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.junit.jupiter.params.provider.ValueSources;

import static org.junit.jupiter.api.Assertions.*;

public class CalculadoraAppTest {
    CalculadoraApp calc;

    @BeforeEach
    void instanciar(){
        calc = new CalculadoraApp();
    }

    @Test
    void testSomaInt(){
        //Configuração
            //A função "instanciar()" está substituindo a etapa de "Configuração"
        //CalculadoraApp calc = new CalculadoraApp();


        //Execução
        int resultado = calc.somaInteiros(2,3);

        //Verificação
        assertEquals(5, resultado,"Mensagem de Erro Opcional");
    }

    @Test
    void testDivideInt(){
        //Configuração
            //A função "instanciar()" está substituindo a etapa de "Configuração"
        //CalculadoraApp calc = new CalculadoraApp();

        //Execução
        int resultado = calc.divideInteiros(9,3);

        //Verificação
        assertEquals(3, resultado,"Mensagem de Erro Opcional");
    }

    @Test
    void testDivideComException(){
        CalculadoraApp calc = new CalculadoraApp();
        ArithmeticException exception = assertThrows(ArithmeticException.class, () ->{
            calc.divideComException(10, 0);
        });
        assertEquals("NÃO é possivel dividir po ZERO",exception.getMessage());
    }

    @ParameterizedTest
    @ValueSource(ints = { 2, 8 ,10 , 14 , 3000, 1000})
    void testTestPar(int num){
        //Configuração
        //A função "instanciar()" está substituindo a etapa de "Configuração"
        //CalculadoraApp calc = new CalculadoraApp();

        //Execução e Verificação
        assertTrue(calc.testPar(num), "O número " + num + " é impar!" );
    }

    @Test
    void TestDescontoProgrssivo5(){
        //A função "instanciar()" está substituindo a etapa de "Configuração"
        int desconto = calc.descontoProgrssivo(9);
        assertEquals(5,desconto);
    }

    @Test
    void TestDescontoProgrssivo10(){
        //A função "instanciar()" está substituindo a etapa de "Configuração"
        int desconto = calc.descontoProgrssivo(20);
        assertEquals(10,desconto);
    }

    @Test
    void TestDescontoProgrssivo15(){
        //A função "instanciar()" está substituindo a etapa de "Configuração"
        int desconto = calc.descontoProgrssivo(29);
        assertEquals(15,desconto);
    }

    @AfterEach
    void limpa(){
        calc = null;
    }
}
