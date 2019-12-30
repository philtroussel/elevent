const y = document.getElementById("time2");
const w = document.getElementById("time3");
const wLabel = document.getElementById("time3-label");
const yLabel = document.getElementById("time2-label");

document.addEventListener('DOMContentLoaded', function() {
    var date = document.querySelectorAll('.datepicker');
    if (date) {
      var instances = M.Datepicker.init(date, {
        autoClose: true,
        onSelect: (date) => {
          yLabel.style.color = 'transparent';
        }
      });

    }
    var time = document.querySelectorAll('.timepicker');
    if (time) {
      var instances = M.Timepicker.init(time, {
        autoClose: true,
        onSelect  : (hour, minute) => {
          wLabel.style.color = 'transparent';
        }
      });
    }
  });
