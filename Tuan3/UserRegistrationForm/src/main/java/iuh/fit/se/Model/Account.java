package iuh.fit.se.Model;

public class Account {
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String birthday;
    private String gender;

    public Account(String firstName, String lastName, String email, String password,
                   String birthday, String gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.birthday = birthday;
        this.gender = gender;
    }

    public String getFirstName() { return firstName; }
    public String getLastName() { return lastName; }
    public String getEmail() { return email; }
    public String getBirthday() { return birthday; }
    public String getGender() { return gender; }
}
