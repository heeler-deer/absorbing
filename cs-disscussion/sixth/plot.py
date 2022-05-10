from pyecharts.charts import Surface3D
from pyecharts import options as opts
from pyecharts.commons.utils import JsCode
class CreateMountain:
    def __init__(self):
        self.data_set = []
        self.gragh = Surface3D(
            init_opts= opts.InitOpts(
                width="1080px",
                height="650px",
                page_title= "Original Memory mountain",
        )
        )

    def data_process(self):
        with open(r"111.txt", "r") as f:
            data_set_origin = f.readlines()
        for line in data_set_origin:
            for index,item in enumerate(line.split("\t")[:-1], start=0):
                # index即为步长
                if index == 0:
                    size = int(item[0:-1])
                    flag = item[-1]
                    if flag == "m":
                        size *=1000000
                        
                    elif flag == "k":
                        size *= 1000
                else:
                    read_throughput = int(item)
                    self.data_set.append([size,index,read_throughput])

    def plot(self):
        self.data_process()
        self.gragh.add(
            series_name="Original Memory mountain",
            shading="realistic",
            # 通过k*k循环展开测出来的数据集
            data=self.data_set,
            # 三维图形的着色效果配置，realistic即为真实感渲染
            # 图元配置项
            itemstyle_opts=opts.ItemStyleOpts(),
            # 3D Y坐标轴配置项
            yaxis3d_opts=opts.Axis3DOpts(
                name="Stride(x8bytes)",
                name_gap=40),
            # 3D X坐标轴配置项
            xaxis3d_opts=opts.Axis3DOpts(
                name="working set Size(byte)",
                name_gap=40),
            # 3D Z坐标轴配置项
            zaxis3d_opts=opts.Axis3DOpts(
                name="readThroughout(MB/s)",
                name_gap=40),
            # 三维笛卡尔坐标系配置项
            grid3d_opts=opts.Grid3DOpts(
                width=100,
                height=100,
                depth=100
            ),
        ).set_global_opts(
            title_opts=opts.TitleOpts(
                title="Memory Mountain",
                subtitle="Click here to get source data \n Copyright@Star",
                title_link="https://github.com/Star-xing1/Memory-Mountain",
                pos_left="center",
                pos_right="center",
                pos_top="5%",
            ),
            tooltip_opts=opts.TooltipOpts(
                is_show= True,
                trigger_on= "mousemove|click",
            ),
            visualmap_opts=opts.VisualMapOpts(
                is_show=True,
                dimension=2,
                orient= "vertical",
                type_= "color",
                max_=2000,
                min_=0,
                range_color=[
                    "#313695",
                    "#4575b4",
                    "#74add1",
                    "#abd9e9",
                    "#e0f3f8",
                    "#ffffbf",
                    "#fee090",
                    "#fdae61",
                    "#f46d43",
                    "#d73027",
                    "#a50026",
                ]
            )).render("Original Memory mountain.html")

if __name__ == "__main__":
    c = CreateMountain()
    c.plot()