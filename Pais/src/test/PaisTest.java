package test;


import static org.junit.Assert.assertEquals;
import model.Pais;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import service.PaisService;


@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class PaisTest {
	Pais pais, copia;
	PaisService paisService;
	static int id = 0;
	private Long populacao;
	private Double area;

	@Before
		public void setUp() throws Exception {
		System.out.println("setup");
		pais = new Pais();
		pais.setId(id);
		pais.setNome("BRASIL");
		pais.setPopulacao(9123421);
		pais.setArea(91234321);
		copia = new Pais();
		copia.setId(id);
		copia.setNome("BRASIL");
		copia.setPopulacao(9123421);
		copia.setArea(91234321);
		paisService = new PaisService();
		System.out.println(pais);
		System.out.println(copia);
		System.out.println(id);
		}

	@Test
	public void test00Carregar() {
		System.out.println("carregar");
		Pais fixture = new Pais();
		fixture.setId(1);
		fixture.setNome("RUSSIA");
		fixture.setPopulacao(344321);
		fixture.setArea(1115151511);
		PaisService novoService = new PaisService();
		Pais novo = novoService.carregar(1);
		assertEquals("testa inclusao", novo, fixture);
	}

	@Test
	public void test01Criar() {
		System.out.println("criar");
		id = paisService.criar(pais);
		System.out.println(id);
		copia.setId(id);
		assertEquals("testa criacao", pais, copia);
	}

	@Test
	public void test02Atualizar() {
		System.out.println("atualizar");
		pais.setNome("EUA");
		copia.setNome("EUA");		
		paisService.atualizar(pais);
		pais = paisService.carregar(pais.getId());
		assertEquals("testa atualizacao", pais, copia);
	}

	@Test
	public void test03Excluir() {
		System.out.println("excluir");
		copia.setId(-1);
		copia.setNome(null);
		populacao = (Long) null;
		copia.setPopulacao(populacao);
		area = (Double) null;
		copia.setArea(area);
		paisService.excluir(id);
		pais = paisService.carregar(id);
		assertEquals("testa exclusao", pais, copia);
	}
}

