<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <!-- ��Ʈ ��Ʈ�� -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>

<body>

<br>

<div>
    <h1 class="text-center"> Survey </h1>
</div>

<br>

<div class="container">
    <div class="row">
        <div class="col">
            <form:form action="/dosurvey" method="post" modelAttribute="surveyData">
                <p><strong> ���� </strong></p>
                <div class="custom-control custom-radio">
                    <input type="radio" name="gender" id="man" class="custom-control-input" value="male">
                    <label class="custom-control-label" for="man">����</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="gender" id="woman" class="custom-control-input" value="female">
                    <label class="custom-control-label" for="woman">����</label>
                </div>

                <br><br>

                <p><strong> ���ɴ� </strong></p>
                <div class="custom-control custom-radio">
                    <input type="radio" name="age" id="age10" class="custom-control-input" value="10">
                    <label class="custom-control-label" for="age10">10��</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="age" id="age20" class="custom-control-input" value="20">
                    <label class="custom-control-label" for="age20">20��</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="age" id="age30" class="custom-control-input" value="30">
                    <label class="custom-control-label" for="age30">30��</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="age" id="age40" class="custom-control-input" value="40">
                    <label class="custom-control-label" for="age40">40��</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="age" id="age50" class="custom-control-input" value="50">
                    <label class="custom-control-label" for="age50">50��</label>
                </div>

                <div class="custom-control custom-radio">
                    <input type="radio" name="age" id="ageOver" class="custom-control-input" value="over 50">
                    <label class="custom-control-label" for="ageOver">50�� �̻�</label>
                </div>

                <br><br>

                <p><strong> ���� </strong></p>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salary" id="salarayUnder" class="custom-control-input" value="under 2000">
                    <label class="custom-control-label" for="salarayUnder">2000 ����</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salary" id="salaray2000" class="custom-control-input" value="2000">
                    <label class="custom-control-label" for="salaray2000">2000</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salary" id="salaray3000" class="custom-control-input" value="3000">
                    <label class="custom-control-label" for="salaray3000">3000</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salary" id="salaray4000" class="custom-control-input" value="4000">
                    <label class="custom-control-label" for="salaray4000">4000</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salary" id="salaray5000" class="custom-control-input" value="5000">
                    <label class="custom-control-label" for="salaray5000">4000</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salary" id="salarayOver" class="custom-control-input" value="over 5000">
                    <label class="custom-control-label" for="salarayOver">4000</label>
                </div>

                <br><br>

                ${restaurantName} �� ������ ?
                <div class="custom-control custom-radio">
                    <input type="radio" name="rate" id="rate1" class="custom-control-input" value="worst">
                    <label class="custom-control-label" for="rate1"> �ſ� �Ҹ��� </label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="rate" id="rate2" class="custom-control-input" value="bad">
                    <label class="custom-control-label" for="rate2"> �Ҹ��� </label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="rate" id="rate3" class="custom-control-input" value="soso">
                    <label class="custom-control-label" for="rate3"> ���� </label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="rate" id="rate4" class="custom-control-input" value="good">
                    <label class="custom-control-label" for="rate4"> ���� </label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="rate" id="rate5" class="custom-control-input" value="best">
                    <label class="custom-control-label" for="rate5"> �ſ� ���� </label>
                </div>

                <br><br>
                <input class="btn btn-primary btn-lg" type="submit" value="����"/>
            </form:form>

        </div>
    </div>
</div>

</body>

</html>