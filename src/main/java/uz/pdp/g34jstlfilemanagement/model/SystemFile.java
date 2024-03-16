package uz.pdp.g34jstlfilemanagement.model;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SystemFile {
    private String submittedName;
    private String name;
    private long size;
}
