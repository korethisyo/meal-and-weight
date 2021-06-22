// jsをturbolinkでページをロードしたときに読みこます
$(document).on('ready turbolinks:load', function() {
  // グラフの高さの指定
  document.getElementById("myChart").style.height = "500px";

  var ctx = document.getElementById("myChart");
  var myLineChart = new Chart(ctx, {
    // 折れ線グラフの指定
    type: 'line',
    data: {
      // x軸の値をセット(日付)
      labels: gon.date,
      // y軸の値をセット(体重)
      datasets: [
        {
          label: '体重(kg）',
          data: gon.weight,
          borderColor: "rgba(255,0,0,1)",
          backgroundColor: "rgba(0,0,0,0)"
        },
      ],
    },
    options: {
      responsive: false,
      // タイトルをセット、displayでタイトルは見えないように設定
      title: {
        display: false,
        text: '体重推移'
      },
      scales: {
        yAxes: [{
          // y軸の値を最高100kgまで表示、最低値を0kgで表示、1メモリあたり10kg
          ticks: {
            suggestedMax: 100,
            suggestedMin: 30,
            stepSize: 10,
            callback: function(value, index, values){
              return  value +  'kg'
            }
          }
        }]
      },
    }
  });
});
