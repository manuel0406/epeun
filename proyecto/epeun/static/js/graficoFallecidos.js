const getOptionChartFa= async () => {
    try {
        const response = await fetch("http://127.0.0.1:8000/get_chartFallecidos/");
        return await response.json();
    } catch (ex) {
        alert(ex);
    }
};

const initChartFa = async () => {

    const myChart = echarts.init(document.getElementById("echartFa"));

    myChart.setOption(await getOptionChartFa());

    myChart.resize();



};

window.addEventListener("load", async () => {
    await initChartFa();
});