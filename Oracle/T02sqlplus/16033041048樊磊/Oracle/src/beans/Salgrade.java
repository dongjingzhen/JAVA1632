package beans;

/**
 * Salgrade entity. @author MyEclipse Persistence Tools
 */

public class Salgrade implements java.io.Serializable {

	// Fields

	@Override
	public String toString() {
		return "Salgrade [id=" + id + "]";
	}

	private SalgradeId id;

	// Constructors

	/** default constructor */
	public Salgrade() {
	}

	/** full constructor */
	public Salgrade(SalgradeId id) {
		this.id = id;
	}

	// Property accessors

	public SalgradeId getId() {
		return this.id;
	}

	public void setId(SalgradeId id) {
		this.id = id;
	}

}