package com.beta.surveyweb.model;

public class Survey {

    private String phoneNumber;
    private Data survey;

    public Survey() {
    }

    public Survey(String phoneNumber, Data survey) {
        this.phoneNumber = phoneNumber;
        this.survey = survey;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Data getSurvey() {
        return survey;
    }

    public void setSurvey(Data survey) {
        this.survey = survey;
    }

    @Override
    public String toString() {
        return "Survey{" +
                "phoneNumber='" + phoneNumber + '\'' +
                ", survey=" + survey +
                '}';
    }

    public static class Data{
        private String gender;
        private String age;
        private String salary;
        private String rate;

        public Data() {
        }

        public Data(String gender, String age, String salary, String rate) {
            this.gender = gender;
            this.age = age;
            this.salary = salary;
            this.rate = rate;
        }

        public String getGender() {
            return gender;
        }

        public void setGender(String gender) {
            this.gender = gender;
        }

        public String getAge() {
            return age;
        }

        public void setAge(String age) {
            this.age = age;
        }

        public String getSalary() {
            return salary;
        }

        public void setSalary(String salary) {
            this.salary = salary;
        }

        public String getRate() {
            return rate;
        }

        public void setRate(String rate) {
            this.rate = rate;
        }

        @Override
        public String toString() {
            return "Data{" +
                    "gender='" + gender + '\'' +
                    ", age='" + age + '\'' +
                    ", salary='" + salary + '\'' +
                    ", rate='" + rate + '\'' +
                    '}';
        }
    }
}
