package agencia.viagem;

public class Programa {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Cliente c1 = new Cliente("Marco");
		Cliente c2 = new Cliente("Vanessa");
		
		System.out.println(c1.getNome() + "\n" + c2.getNome());
		
		Destino d1 = new Destino("Recife");
		Destino d2 = new Destino("Rio de Janeiro");
		
		System.out.println(d1.getNomeDestino() + "\n" + d2.getNomeDestino());

	}

}
