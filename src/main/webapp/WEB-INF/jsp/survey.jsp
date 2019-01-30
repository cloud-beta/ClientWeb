<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <!-- 부트 스트랩 -->
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

            <form action="/dosurvey" method="post">
                <p><strong> 성별 </strong></p>
                <div class="custom-control custom-radio">
                    <input type="radio" name="sex" id="man" class="custom-control-input">
                    <label class="custom-control-label" for="man">남성</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="sex" id="woman" class="custom-control-input">
                    <label class="custom-control-label" for="woman">여성</label>
                </div>

                <br><br>

                <p><strong> 연령대 </strong></p>
                <div class="custom-control custom-radio">
                    <input type="radio" name="generation" id="generation10" class="custom-control-input">
                    <label class="custom-control-label" for="generation10">10대</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="generation" id="generation20" class="custom-control-input">
                    <label class="custom-control-label" for="generation20">20대</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="generation" id="generation30" class="custom-control-input">
                    <label class="custom-control-label" for="generation30">30대</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="generation" id="generation40" class="custom-control-input">
                    <label class="custom-control-label" for="generation40">40대</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="generation" id="generation50" class="custom-control-input">
                    <label class="custom-control-label" for="generation50">50대 이상</label>
                </div>

                <br><br>

                <p><strong> 연봉 </strong></p>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salaray" id="salaray2" class="custom-control-input">
                    <label class="custom-control-label" for="salaray2">2000이상 3000미만</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salaray" id="salaray3" class="custom-control-input">
                    <label class="custom-control-label" for="salaray3">3000이상 4000미만</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salaray" id="salaray4" class="custom-control-input">
                    <label class="custom-control-label" for="salaray4">40000이상 5000미만</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="salaray" id="salaray5" class="custom-control-input">
                    <label class="custom-control-label" for="salaray5">5000이상</label>
                </div>

                <br><br>

                ${restaurantName} 의 평점은 ?
                <div class="custom-control custom-radio">
                    <input type="radio" name="estimate" id="estimate1" class="custom-control-input">
                    <label class="custom-control-label" for="estimate1"> 1 </label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="estimate" id="estimate2" class="custom-control-input">
                    <label class="custom-control-label" for="estimate2"> 2 </label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="estimate" id="estimate" class="custom-control-input">
                    <label class="custom-control-label" for="estimate"> 3 </label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="estimate" id="estimate4" class="custom-control-input">
                    <label class="custom-control-label" for="estimate4"> 4 </label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" name="estimate" id="estimate5" class="custom-control-input">
                    <label class="custom-control-label" for="estimate5"> 5 </label>
                </div>

                <br><br>
                <input class="btn btn-primary btn-lg" type="submit" value="제출"/>
            </form>

        </div>
    </div>
</div>

</body>

</html>