package AF;

public class CountPrice {
    private double num_notebook;
    private double num_case;
    private double num_paper;
    private double num_tape;
    private double num_eraser;
    private double pri_notebook;
    private double pri_case;
    private double pri_paper;
    private double pri_tape;
    private double pri_eraser;
    private double total_price;

    public double getNum_notebook() {
        return num_notebook;
    }

    public void setNum_notebook(double num_notebook) {
        this.num_notebook = num_notebook;
        this.setPri_notebook(num_notebook * 5.0);
    }

    public double getNum_case() {
        return num_case;
    }

    public void setNum_case(double num_case) {
        this.num_case = num_case;
        this.setPri_case(num_case * 3.0);
    }

    public double getNum_paper() { return num_paper; }

    public void setNum_paper(double num_paper) {
        this.num_paper = num_paper;
        this.setPri_paper(num_paper * 2.0);
    }

    public double getNum_tape() {
        return num_tape;
    }

    public void setNum_tape(double num_tape) {
        this.num_tape = num_tape;
        this.setPri_tape(num_tape * 4.5);
    }

    public double getNum_eraser() {
        return num_eraser;
    }

    public void setNum_eraser(double num_eraser) {
        this.num_eraser = num_eraser;
        this.setPri_eraser(num_eraser * 5.5);
    }

    public double getPri_notebook() {
        return pri_notebook;
    }

    public void setPri_notebook(double pri_notebook) {
        this.pri_notebook = pri_notebook;
    }

    public double getPri_case() {
        return pri_case;
    }

    public void setPri_case(double pri_case) {
        this.pri_case = pri_case;
    }

    public double getPri_paper() {
        return pri_paper;
    }

    public void setPri_paper(double pri_paper) {
        this.pri_paper = pri_paper;
    }

    public double getPri_tape() {
        return pri_tape;
    }

    public void setPri_tape(double pri_tape) {
        this.pri_tape = pri_tape;
    }

    public double getPri_eraser() {
        return pri_eraser;
    }

    public void setPri_eraser(double pri_eraser) {
        this.pri_eraser = pri_eraser;
    }

    public double getTotal_price() {
        this.total_price = this.getPri_notebook() + this.getPri_paper()
                + this.getPri_tape() + this.getPri_case() + this.getPri_eraser();
        return total_price;
    }
}
