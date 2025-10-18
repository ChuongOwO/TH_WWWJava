package iuh.fit.se;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

    private static ApplicationContext context;
    public static void main(String[] args) {
        context = new ClassPathXmlApplicationContext("beans.xml");
        Student student1 = context.getBean("student1", Student.class);
        System.out.println(student1);

        Student student2 = context.getBean("student2", Student.class);
        System.out.println(student2);

        Student student3 = context.getBean("student3", Student.class);
        System.out.println(student3);


        Person person1 = context.getBean("person1", Person.class);
        System.out.println(person1);


        Class_ class_2 = context.getBean("class2", Class_.class);
        System.out.println(class_2);

    }
}
