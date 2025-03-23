document.addEventListener("DOMContentLoaded", function () {
  const wherePrayed = document.getElementById("where_prayed");
  const prayedAtHomeWhyContainer = document.getElementById("prayed_at_home_why_container");
  const prayedTimeliness = document.getElementById("prayed_timeliness");
  const reasonContainer = document.getElementById("reason_container");
  const tasbihDone = document.getElementById("tasbih_done");
  const tasbihConcentrationContainer = document.getElementById("tasbih_concentration_container");

  if (wherePrayed) {
    wherePrayed.addEventListener("change", function () {
      prayedAtHomeWhyContainer.style.display = wherePrayed.value === "Home" || wherePrayed.value === "Other" ? "block" : "none";
    });
  }

  if (prayedTimeliness) {
    prayedTimeliness.addEventListener("change", function () {
      reasonContainer.style.display = prayedTimeliness.value === "Late" || prayedTimeliness.value === "Early" ? "block" : "none";
    });
  }

  if (tasbihDone) {
    tasbihDone.addEventListener("change", function () {
      tasbihConcentrationContainer.style.display = tasbihDone.checked ? "block" : "none";
    });
  }
});