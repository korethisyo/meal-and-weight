$(document).on('ready turbolinks:load', function() {
  var ctx = document.getElementById("myChart");
  var myLineChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: gon.date,
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
      title: {
        display: false,
        text: '体重推移'
      },
      scales: {
        yAxes: [{
          ticks: {
            suggestedMax: 100,
            suggestedMin: 0,
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