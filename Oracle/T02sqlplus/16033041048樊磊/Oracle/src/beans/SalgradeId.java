package beans;

import java.math.BigDecimal;

/**
 * SalgradeId entity. @author MyEclipse Persistence Tools
 */

public class SalgradeId implements java.io.Serializable {

	// Fields

	@Override
	public String toString() {
		return "SalgradeId [grade=" + grade + ", hisal=" + hisal + ", losal="
				+ losal + "]";
	}

	private BigDecimal grade;
	private BigDecimal losal;
	private BigDecimal hisal;

	// Constructors

	/** default constructor */
	public SalgradeId() {
	}

	/** full constructor */
	public SalgradeId(BigDecimal grade, BigDecimal losal, BigDecimal hisal) {
		this.grade = grade;
		this.losal = losal;
		this.hisal = hisal;
	}

	// Property accessors

	public BigDecimal getGrade() {
		return this.grade;
	}

	public void setGrade(BigDecimal grade) {
		this.grade = grade;
	}

	public BigDecimal getLosal() {
		return this.losal;
	}

	public void setLosal(BigDecimal losal) {
		this.losal = losal;
	}

	public BigDecimal getHisal() {
		return this.hisal;
	}

	public void setHisal(BigDecimal hisal) {
		this.hisal = hisal;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SalgradeId))
			return false;
		SalgradeId castOther = (SalgradeId) other;

		return ((this.getGrade() == castOther.getGrade()) || (this.getGrade() != null
				&& castOther.getGrade() != null && this.getGrade().equals(
				castOther.getGrade())))
				&& ((this.getLosal() == castOther.getLosal()) || (this
						.getLosal() != null
						&& castOther.getLosal() != null && this.getLosal()
						.equals(castOther.getLosal())))
				&& ((this.getHisal() == castOther.getHisal()) || (this
						.getHisal() != null
						&& castOther.getHisal() != null && this.getHisal()
						.equals(castOther.getHisal())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getGrade() == null ? 0 : this.getGrade().hashCode());
		result = 37 * result
				+ (getLosal() == null ? 0 : this.getLosal().hashCode());
		result = 37 * result
				+ (getHisal() == null ? 0 : this.getHisal().hashCode());
		return result;
	}

}