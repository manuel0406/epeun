const getOptionChartNu = async () => {
    try {
        const response = await fetch("http://127.0.0.1:8000/get_chartNuevoIngreso/");
        return await response.json();
    } catch (ex) {
        alert(ex);
    }
};

const initChartNu = async () => {

    const myChart = echarts.init(document.getElementById("echartNu"));

    myChart.setOption(await getOptionChartNu());

    myChart.resize();



};

window.addEventListener("load", async () => {
    await initChartNu();
});