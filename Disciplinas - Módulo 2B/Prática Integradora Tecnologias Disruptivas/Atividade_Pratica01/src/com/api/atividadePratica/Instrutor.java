

@Entity
@Table(name = "instrutor")
public class Instrutor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_instrutor")
	private Integer id_instrutor;
	
	@Column(name = "rg", length = 15)
    private String rg;

    @Column(name = "nome", length = 100)
    private String nome;

    @Temporal(TemporalType.DATE)
    @Column(name = "nascimento")
    private Date nascimento;

    @Column(name = "titulacao", length = 50)
    private String titulacao;
	
	@OneToMany(mappedBy = "instrutor")
	private Set<Turma> turmas;
	
	// Getters e Setters
	
	public Integer getIdInstrutor() {
        return idInstrutor;
    }

    public void setIdInstrutor(Integer idInstrutor) {
        this.idInstrutor = idInstrutor;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getNascimento() {
        return nascimento;
    }

    public void setNascimento(Date nascimento) {
        this.nascimento = nascimento;
    }

    public String getTitulacao() {
        return titulacao;
    }

    public void setTitulacao(String titulacao) {
        this.titulacao = titulacao;
    }

	
}

@Entity
@Table(name = "turma")
public class Turma{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_turma")
	private Integer id_turma;
	
	@Column(name = "horario")
	private Time horario;

    @Column(name = "duracao")
    private Integer duracao; 

    @Column(name = "data_inicio")
    private Date data_Inicio;

    @Column(name = "data_fim")
    private Date data_Fim;
	
	@ManyToOne
	@JoinColumn(name = "id_instrutor",
			referenceColumnName = "id_instrutor")
	private Instrutor instrutor;
	
	// Getters e Setters

    public Integer getIdTurma() {
        return id_Turma;
    }

    public void setIdTurma(Integer idTurma) {
        this.id_Turma = idTurma;
    }

    public Instrutor getInstrutor() {
        return instrutor;
    }

    public void setInstrutor(Instrutor instrutor) {
        this.instrutor = instrutor;
    }

    public Time getHorario() {
        return horario;
    }

    public void setHorario(Time horario) {
        this.horario = horario;
    }

    public Integer getDuracao() {
        return duracao;
    }

    public void setDuracao(Integer duracao) {
        this.duracao = duracao;
    }

    public Date getDataInicio() {
        return data_Inicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.data_Inicio = dataInicio;
    }

    public Date getDataFim() {
        return data_Fim;
    }

    public void setDataFim(Date dataFim) {
        this.data_Fim = dataFim;
    }
	
}
