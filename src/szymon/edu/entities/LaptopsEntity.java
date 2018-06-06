package szymon.edu.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "laptops", schema = "library", catalog = "")
public class LaptopsEntity {
    private int id;
    private String model;
    private String cpu;
    private String gpu;
    private Integer ram;
    private String disc;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "model")
    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    @Basic
    @Column(name = "cpu")
    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    @Basic
    @Column(name = "gpu")
    public String getGpu() {
        return gpu;
    }

    public void setGpu(String gpu) {
        this.gpu = gpu;
    }

    @Basic
    @Column(name = "ram")
    public Integer getRam() {
        return ram;
    }

    public void setRam(Integer ram) {
        this.ram = ram;
    }

    @Basic
    @Column(name = "disc")
    public String getDisc() {
        return disc;
    }

    public void setDisc(String disc) {
        this.disc = disc;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LaptopsEntity that = (LaptopsEntity) o;
        return id == that.id &&
                Objects.equals(model, that.model) &&
                Objects.equals(cpu, that.cpu) &&
                Objects.equals(gpu, that.gpu) &&
                Objects.equals(ram, that.ram) &&
                Objects.equals(disc, that.disc);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, model, cpu, gpu, ram, disc);
    }
}
