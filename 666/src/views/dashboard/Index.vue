<template>
  <div
    class="page-container"
    id="content"
  >
    <div class="page-content-wrapper">
      <el-row :gutter="20">
        <el-col :span="6">
          <el-card :body-style="{ padding: '20px 20px 8px 20px' }">
            <div class="card-wrapper">
              <div class="card-meta-wrapper">
                <span class="meta-text">总销售额</span>
                <span class="card-actions">
                  <el-tooltip
                    class="card-tooltip"
                    effect="dark"
                    content="指标说明"
                    placement="top"
                  >
                    <i class="el-icon-tiss-info"></i>
                  </el-tooltip>
                </span>
                <div class="card-total-text">
                  <span class="total-text">¥ 126,560</span>
                </div>
              </div>
              <div
                class="card-content"
                style="height: 46px;"
              >
                <div class="card-contentFixed">
                  <div class="trend-item">
                    <span class="trend-item-title">周同比</span>
                    <span class="trend-item-text">12%</span>
                    <span class="trend-item-icon trend-item-icon-up">
                      <i class="el-icon-caret-top"></i>
                    </span>
                  </div>
                  <div class="trend-item">
                    <span class="trend-item-title">日同比</span>
                    <span class="trend-item-text">11%</span>
                    <span class="trend-item-icon trend-item-icon-down">
                      <i class="el-icon-caret-bottom"></i>
                    </span>
                  </div>
                </div>
              </div>
              <div class="card-footer">
                <div class="card-field-item">
                  <span class="card-field-title">日销售额</span>
                  <span class="card-field-text">￥12,423</span>
                </div>
              </div>
            </div>
          </el-card>
        </el-col>
        <el-col :span="6">
          <el-card :body-style="{ padding: '20px 20px 8px 20px' }">
            <div class="card-wrapper">
              <div class="card-meta-wrapper">
                <span class="meta-text">访问量</span>
                <span class="card-actions">
                  <el-tooltip
                    class="card-tooltip"
                    effect="dark"
                    content="指标说明"
                    placement="top"
                  >
                    <i class="el-icon-tiss-info"></i>
                  </el-tooltip>
                </span>
                <div class="card-total-text">
                  <span class="total-text">8,846</span>
                </div>
              </div>
              <div
                class="card-content"
                style="height: 46px;"
              >
                <div class="card-contentFixed">
                  <div
                    id="chartTrendLine"
                    style="height: 30px; width: 100%;"
                  ></div>
                </div>
              </div>
              <div class="card-footer">
                <div class="card-field-item">
                  <span class="card-field-title">日访问量</span>
                  <span class="card-field-text">1,234</span>
                </div>
              </div>
            </div>
          </el-card>
        </el-col>
        <el-col :span="6">
          <el-card :body-style="{ padding: '20px 20px 8px 20px' }">
            <div class="card-wrapper">
              <div class="card-meta-wrapper">
                <span class="meta-text">支付笔数</span>
                <span class="card-actions">
                  <el-tooltip
                    class="card-tooltip"
                    effect="dark"
                    content="指标说明"
                    placement="top"
                  >
                    <i class="el-icon-tiss-info"></i>
                  </el-tooltip>
                </span>
                <div class="card-total-text">
                  <span class="total-text">6,560</span>
                </div>
              </div>
              <div
                class="card-content"
                style="height: 46px;"
              >
                <div class="card-contentFixed">
                  <div
                    id="chartColumn"
                    style="height: 30px; width: 100%;"
                  ></div>
                </div>
              </div>
              <div class="card-footer">
                <div class="card-field-item">
                  <span class="card-field-title">转化率</span>
                  <span class="card-field-text">60%</span>
                </div>
              </div>
            </div>
          </el-card>
        </el-col>
        <el-col :span="6">
          <el-card :body-style="{ padding: '20px 20px 8px 20px' }">
            <div class="card-wrapper">
              <div class="card-meta-wrapper">
                <span class="meta-text">运营活动效果</span>
                <span class="card-actions">
                  <el-tooltip
                    class="card-tooltip"
                    effect="dark"
                    content="指标说明"
                    placement="top"
                  >
                    <i class="el-icon-tiss-info"></i>
                  </el-tooltip>
                </span>
                <div class="card-total-text">
                  <span class="total-text">78%</span>
                </div>
              </div>
              <div
                class="card-content"
                style="height: 46px;"
              >
                <div class="card-contentFixed">
                  <el-progress
                    :percentage="78"
                    :show-text="false"
                    status="success"
                  ></el-progress>
                </div>
              </div>
              <div class="card-footer">
                <div class="trend-item">
                  <span class="trend-item-title">周同比</span>
                  <span class="trend-item-text">12%</span>
                  <span class="trend-item-icon trend-item-icon-up">
                    <i class="el-icon-caret-top"></i>
                  </span>
                </div>
                <div class="trend-item">
                  <span class="trend-item-title">日同比</span>
                  <span class="trend-item-text">11%</span>
                  <span class="trend-item-icon trend-item-icon-down">
                    <i class="el-icon-caret-bottom"></i>
                  </span>
                </div>
              </div>
            </div>
          </el-card>
        </el-col>
      </el-row>
      <el-row :gutter="20">
        <el-col :span="24">
          <el-card
            class="chart-card"
            :body-style="{ padding: '10px 20px' }"
          >
            <el-tabs
              v-model="activeName"
              id="chart-tabs"
            >
              <el-tab-pane
                label="销售额"
                name="first"
              >
                <el-row :gutter="20">
                  <el-col :span="16">
                    <div class="chart-title">销售趋势</div>
                    <div
                      id="chartBar1"
                      style="width: 100%; height: 255px;"
                    ></div>
                  </el-col>
                  <el-col :span="8">
                    <div class="chart-title">门店销售额排名</div>
                    <ul class="analysis-ranking-list">
                      <li
                        v-for="(item, index) in rankList"
                        :key="index"
                      >
                        <span :class="['ranking-item-number', index < 3 ? 'active': '']">{{ index + 1 }}</span>
                        <span class="ranking-item-name">{{ item.name }}</span>
                        <span class="ranking-item-value">{{ item.value }}</span>
                      </li>
                    </ul>
                  </el-col>
                </el-row>
              </el-tab-pane>
              <el-tab-pane
                label="访问量"
                name="second"
              >
                <el-row :gutter="20">
                  <el-col :span="16">
                    <div class="chart-title">访问量趋势</div>
                    <div
                      id="chartBar2"
                      style="width: 100%; height: 255px;"
                    ></div>
                  </el-col>
                  <el-col :span="8">
                    <div class="chart-title">投诉类型统计</div>
                    <div
                      id="chartPie"
                      style="width: 100%; height: 255px;"
                    ></div>
                  </el-col>
                </el-row>
              </el-tab-pane>
            </el-tabs>
          </el-card>
        </el-col>
      </el-row>
      <el-row :gutter="20" style="display:none">
        <!-- <el-col :span="6">
          <el-card :body-style="{ padding: '10px 20px' }">
            <div
              id="chartRadar"
              style="height: 350px; width: 100%;"
            ></div>
          </el-card>
        </el-col> -->
        <el-col :span="24">
          <el-card :body-style="{ padding: '10px 20px' }">
            <div
              id="chartTree"
              style="height: 800px; width: 100%;"
            ></div>
          </el-card>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
import { EleResize } from '@/utils/EleResize'

export default {
  name: 'Dashboard',
  data () {
    return {
      chartColumn: null,
      chartBar1: null,
      chartBar2: null,
      chartLine: null,
      chartPie: null,
      chartTrendLine: null,
      chartRadar: null,
      chartTree: null,
      activeName: 'first',
      rankList: [
        {
          name: '工专路 0 号店',
          value: '323,234'
        },
        {
          name: '工专路 1 号店',
          value: '323,234'
        },
        {
          name: '工专路 2 号店',
          value: '323,234'
        },
        {
          name: '工专路 3 号店',
          value: '323,234'
        },
        {
          name: '工专路 4 号店',
          value: '323,234'
        },
        {
          name: '工专路 5 号店',
          value: '323,234'
        },
        {
          name: '工专路 6 号店',
          value: '323,234'
        }
      ],
      treeData: {
        name: 'WebApp前端性能优化规范',
        children: [
          {
            name: '加载优化',
            children: [
              { name: '合并CSS、Javascript' },
              { name: '合并小图片，使用雪碧图' },
              { name: '缓存一切可缓存的资源' },
              { name: '使用长Cache' },
              { name: '使用外联式引用CSS、Javascript' },
              { name: '压缩HTML、CSS、Javascript' },
              { name: '启用GZip' },
              { name: '使用首屏加载' },
              { name: '使用按需加载' },
              { name: '使用滚屏加载' },
              { name: '使用Media Query加载' },
              { name: '增加Loading进度条' },
              { name: '减少Cookie' },
              { name: '避免重定向' },
              { name: '异步加载第三方资源' }
            ]
          },
          {
            name: 'CSS优化',
            children: [
              { name: 'CSS写在头部，Javascript写在尾部或异步' },
              { name: '避免图片和iframe等的空src' },
              { name: '尽量避免重设图片大小' },
              { name: '图片尽量避免使用DataURL' },
              { name: '尽量避免在HTML中Style属性' },
              { name: '避免CSS表达式' },
              { name: '移除空的CSS规则' },
              { name: '正确使用display的属性' },
              { name: '不滥用float' },
              { name: '不滥用Web子图' },
              { name: '不声明过多的font-size' },
              { name: '值为0时不需要任何单位' },
              { name: '标准化各种浏览器前缀' },
              { name: '避免让选择器看起来像正则表达式' }
            ]
          },
          {
            name: '图片优化',
            children: [
              { name: '使用智图http://zhitu.tencent.com' },
              { name: '使用(CSS3、SVG、Iconfont)代替图片' },
              { name: '使用Srcset' },
              { name: 'webP优于JPG' },
              { name: 'PNG8优于GIF' },
              { name: '首次加载不大于1014KB(基于3秒联通平均网速所能达到值)' },
              { name: '图片不宽于640' }
            ]
          },
          {
            name: '脚本优化',
            children: [
              { name: '减少重绘和回流' },
              { name: '缓存Dom选择与计算' },
              { name: '缓存列表.length' },
              { name: '尽量使用事件代理,避免批量绑定事件' },
              { name: '尽量使用ID选择器' },
              { name: '使用touchstart、touchend代替click' }
            ]
          },
          {
            name: '渲染优化',
            children: [
              { name: 'HTML使用Viewport' },
              { name: '减少Dom节点' },
              { name: '尽量使用CSS3动画' },
              { name: '合理使用requestAnimationFrame动画代替setTimeout' },
              { name: '适当使用Canvas动画' },
              { name: 'Touchmove、Scroll事件会导致多次渲染' },
              { name: '使用(CSS3 transition、CSS3 3D transform、Opacity、Canvas、WebGL、Video)来触发GPU渲染' }
            ]
          }
        ]
      }
    }
  },
  mounted () {
    // 设置图表容器宽高
    let chartBar1 = document.getElementById('chartBar1')
    let chartBar2 = document.getElementById('chartBar2')
    let chartPie = document.getElementById('chartPie')
    let chartTabs = document.getElementById('chart-tabs')
    let chartWidth = (chartTabs.clientWidth / 3) * 2 - 20
    chartBar1.style.width = `${chartWidth}px`
    chartBar2.style.width = `${chartWidth}px`
    chartPie.style.width = `${(chartTabs.clientWidth / 3) * 1 - 20}px`

    this.chartColumn = this.$echarts.init(
      document.getElementById('chartColumn')
    )
    this.chartBar1 = this.$echarts.init(document.getElementById('chartBar1'))
    this.chartBar2 = this.$echarts.init(document.getElementById('chartBar2'))
    // this.chartLine = this.$echarts.init(document.getElementById("chartLine"));
    this.chartPie = this.$echarts.init(document.getElementById('chartPie'))
    this.chartTrendLine = this.$echarts.init(document.getElementById('chartTrendLine'))
    // this.chartRadar = this.$echarts.init(document.getElementById('chartRadar'))
    this.chartTree = this.$echarts.init(document.getElementById('chartTree'))

    this.chartColumn.setOption({
      tooltip: {},
      grid: {
        top: 0,
        left: 0,
        right: 0,
        bottom: 0
      },
      xAxis: {
        axisLine: {
          show: false
        },
        axisTick: {
          show: false
        },
        axisLabel: {
          show: false
        },
        data: [
          '2018-09-01',
          '2018-09-02',
          '2018-09-03',
          '2018-09-04',
          '2018-09-05',
          '2018-09-06',
          '2018-09-07',
          '2018-09-08',
          '2018-09-09',
          '2018-09-10',
          '2018-09-11',
          '2018-09-12',
          '2018-09-13',
          '2018-09-14',
          '2018-09-15',
          '2018-09-16',
          '2018-09-17'
        ]
      },
      yAxis: {
        axisLine: {
          show: false
        },
        axisTick: {
          show: false
        },
        axisLabel: {
          show: false
        },
        splitLine: {
          show: false
        }
      },
      series: [
        {
          name: '销量',
          type: 'bar',
          itemStyle: {
            color: '#1890ff'
          },
          barWidth: '50%',
          data: [7, 5, 4, 2, 4, 7, 5, 6, 5, 9, 6, 3, 1, 5, 3, 6, 5]
        }
      ]
    })
    this.chartBar1.setOption({
      tooltip: {
        trigger: 'item'
      },
      grid: {
        top: 15,
        left: 0,
        right: 0,
        bottom: 0,
        containLabel: true
      },
      xAxis: {
        axisLine: {
          lineStyle: {
            color: '#bfbfbf'
          }
        },
        axisTick: {
          alignWithLabel: true
        },
        axisLabel: {
          color: '#575757'
        },
        data: [
          '1月',
          '2月',
          '3月',
          '4月',
          '5月',
          '6月',
          '7月',
          '8月',
          '9月',
          '10月',
          '11月',
          '12月'
        ]
      },
      yAxis: {
        boundaryGap: false,
        axisLine: {
          show: false
        },
        axisTick: {
          show: false
        },
        splitLine: {
          lineStyle: {
            type: 'dashed',
            color: '#eee'
          }
        }
      },
      series: [
        {
          name: '销售趋势',
          type: 'bar',
          itemStyle: {
            color: '#3aa1ff'
          },
          barWidth: '50%',
          data: [676, 1072, 862, 842, 1035, 461, 241, 365, 323, 892, 827, 399]
        }
      ]
    })
    this.chartBar2.setOption({
      tooltip: {
        trigger: 'item'
      },
      grid: {
        top: 15,
        left: 0,
        right: 0,
        bottom: 0,
        containLabel: true
      },
      xAxis: {
        axisLine: {
          lineStyle: {
            color: '#bfbfbf'
          }
        },
        axisTick: {
          alignWithLabel: true
        },
        axisLabel: {
          color: '#575757'
        },
        data: [
          '1月',
          '2月',
          '3月',
          '4月',
          '5月',
          '6月',
          '7月',
          '8月',
          '9月',
          '10月',
          '11月',
          '12月'
        ]
      },
      yAxis: {
        boundaryGap: false,
        axisLine: {
          show: false
        },
        axisTick: {
          show: false
        },
        splitLine: {
          lineStyle: {
            type: 'dashed',
            color: '#eee'
          }
        }
      },
      series: [
        {
          name: '销售趋势',
          type: 'bar',
          itemStyle: {
            color: '#3aa1ff'
          },
          barWidth: '50%',
          data: [676, 1072, 862, 842, 1035, 461, 241, 1365, 323, 2892, 827, 399]
        }
      ]
    })
    this.chartPie.setOption({
      legend: {
        orient: 'vertical',
        top: 'middle',
        left: '5%',
        selectedMode: false,
        data: ['直接访问', '邮件营销', '联盟广告', '视频广告', '搜索引擎']
      },
      tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b}: {c} ({d}%)'
      },
      color: ['#AFCD67', '#F8C068', '#F89B68', '#67CDB3', '#67BBCD', '#67A5CD'],
      series: [
        {
          name: '投诉类型统计',
          type: 'pie',
          radius: ['50%', '70%'],
          center: ['60%', '50%'],
          avoidLabelOverlap: false,
          label: {
            normal: {
              show: false,
              position: 'center'
            },
            emphasis: {
              show: true,
              position: 'center',
              textStyle: {
                fontSize: '18',
                fontWeight: 'bold',
                color: '#bbb'
              },
              formatter: '{c}',
              verticalAlign: 'middle'
            }
          },
          labelLine: {
            normal: {
              show: false
            }
          },
          data: [
            { value: 335, name: '直接访问' },
            { value: 310, name: '邮件营销' },
            { value: 234, name: '联盟广告' },
            { value: 135, name: '视频广告' },
            { value: 1548, name: '搜索引擎' }
          ]
        }
      ]
    })
    this.chartTrendLine.setOption({
      tooltip: {
        trigger: 'axis',
        axisPointer: {
          type: 'none'
        }
      },
      grid: {
        top: 6,
        left: 0,
        right: 0,
        bottom: 0
      },
      xAxis: {
        axisLine: {
          show: false
        },
        axisTick: {
          show: false
        },
        axisLabel: {
          show: false
        },
        boundaryGap: false,
        data: [
          '2018-09-01',
          '2018-09-02',
          '2018-09-03',
          '2018-09-04',
          '2018-09-05',
          '2018-09-06',
          '2018-09-07',
          '2018-09-08',
          '2018-09-09',
          '2018-09-10',
          '2018-09-11',
          '2018-09-12',
          '2018-09-13',
          '2018-09-14',
          '2018-09-15',
          '2018-09-16',
          '2018-09-17'
        ]
      },
      yAxis: {
        type: 'value',
        axisLine: {
          show: false
        },
        axisTick: {
          show: false
        },
        axisLabel: {
          show: false
        },
        splitLine: {
          show: false
        }
      },
      series: [
        {
          name: '访问量',
          type: 'line',
          smooth: true,
          symbol: 'circle',
          showSymbol: false,
          itemStyle: {
            color: '#975fe4',
            borderColor: '#fff',
            shadowColor: 'rgba(0, 0, 0, 0.5)',
            shadowBlur: 10
          },
          lineStyle: {
            color: '#975fe4'
          },
          areaStyle: {
            color: '#975fe4',
            opacity: 1
          },
          clipOverflow: false,
          data: [7, 5, 4, 2, 4, 7, 5, 6, 5, 9, 6, 3, 1, 5, 3, 6, 5]
        }
      ]
    })

    var el = document.getElementById('content')

    var that = this

    EleResize.on(el, function () {
      let chartBar1 = document.getElementById('chartBar1')
      let chartBar2 = document.getElementById('chartBar2')
      let chartPie = document.getElementById('chartPie')
      let chartTabs = document.getElementById('chart-tabs')
      let chartWidth = (chartTabs.clientWidth / 3) * 2 - 20
      chartBar1.style.width = `${chartWidth}px`
      chartBar2.style.width = `${chartWidth}px`
      chartPie.style.width = `${(chartTabs.clientWidth / 3) * 1 - 20}px`

      that.chartColumn.resize()
      that.chartBar1.resize()
      that.chartBar2.resize()
      that.chartPie.resize()
      that.chartTrendLine.resize()
      that.chartTree.resize()
    })
  }
}
</script>

<style lang="less" scoped>
.el-row {
  .el-col {
    margin-bottom: 20px;
  }
  &:last-child {
    .el-col {
      margin-bottom: 0;
    }
  }
}

.card-wrapper {
  position: relative;
  font-family: Chinese Quote, -apple-system, BlinkMacSystemFont, Segoe UI,
    PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica,
    Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
  font-variant: tabular-nums;
  color: rgba(0, 0, 0, 0.65);

  .card-meta-wrapper {
    .meta-text {
      color: rgba(0, 0, 0, 0.45);
      font-size: 14px;
      height: 22px;
      line-height: 22px;
    }

    .card-actions {
      position: absolute;
      right: 0;
      top: 0;

      .card-tooltip {
        cursor: pointer;
      }
    }

    .total-text {
      color: rgba(0, 0, 0, 0.85);
      font-size: 30px;
      height: 38px;
      line-height: 38px;
      margin-bottom: 0;
      margin-top: 4px;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
      word-break: break-all;
    }
  }

  .card-content {
    margin-bottom: 12px;
    position: relative;
    width: 100%;
    .card-contentFixed {
      width: 100%;
      position: absolute;
      left: 0;
      bottom: 0;
    }
  }
  .card-footer {
    border-top: 1px solid #e8e8e8;
    margin-top: 8px;
    padding-top: 9px;
  }

  .trend-item {
    display: inline-block;
    margin-right: 15px;
    font-size: 14px;
    line-height: 22px;
    &:last-child {
      margin-right: 0;
    }
    .trend-item-text {
      color: rgba(0, 0, 0, 0.85);
      margin-left: 8px;
    }
    .trend-item-icon {
      margin-left: 4px;
    }
    .trend-item-icon-up {
      color: #f5222d;
    }
    .trend-item-icon-down {
      color: #52c41a;
    }
  }
  .card-field-item {
    margin: 0;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 14px;
    line-height: 22px;
    & > :first-child {
      margin-left: 0;
    }
    .card-field-title,
    .card-field-text {
      color: rgba(0, 0, 0, 0.85);
      margin-left: 8px;
    }
  }
}

.chart-title {
  color: rgba(0, 0, 0, 0.85);
  font-family: Chinese Quote, -apple-system, BlinkMacSystemFont, Segoe UI,
    PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica,
    Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
  font-size: 14px;
  font-weight: 500;
  margin-bottom: 20px;
}

.analysis-ranking-list {
  padding: 0;
  margin: 0;
  li {
    display: flex;
    margin-bottom: 15px;
    font-family: Chinese Quote, -apple-system, BlinkMacSystemFont, Segoe UI,
      PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica,
      Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;
    align-items: center;
    color: rgba(0, 0, 0, 0.65);
    font-size: 14px;
    line-height: 22px;
    &:last-child {
      margin-bottom: 0;
    }
    .ranking-item-number {
      background-color: #f5f5f5;
      border-radius: 20px;
      display: inline-block;
      font-size: 12px;
      font-weight: 600;
      height: 20px;
      line-height: 20px;
      margin-right: 16px;
      margin-top: 1.5px;
      text-align: center;
      width: 20px;
      &.active {
        background-color: #314659;
        color: #fff;
      }
    }
    .ranking-item-name {
      flex: 1 1;
      margin-right: 8px;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
    }
  }
}
</style>
