const getOptionChartRe = async () => {
    try {
        const response = await fetch("http://127.0.0.1:8000/get_chartRecursosDigitales/");
        return await response.json();
    } catch (ex) {
        alert(ex);
    }
};

const initChartRe = async () => {

    const myChart = echarts.init(document.getElementById("echartRe"));

    myChart.setOption(await getOptionChartRe());

    myChart.resize();



};

window.addEventListener("load", async () => {
    await initChartRe();
});