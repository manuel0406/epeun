const getOptionChart = async () => {
    try {
        const response = await fetch("http://127.0.0.1:8000/get_chartDesercionSocial/");
        return await response.json();
    } catch (ex) {
        alert(ex);
    }
};

const initChart = async () => {

    const myChart = echarts.init(document.getElementById("echartSo"));

    myChart.setOption(await getOptionChart());

    myChart.resize();



};

window.addEventListener("load", async () => {
    await initChart();
});