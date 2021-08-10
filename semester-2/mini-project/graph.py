import pandas as pd
import json
import random
import datetime,time
import logging
import dash
from plotly.subplots import make_subplots
import plotly.graph_objects as go
import dash
from dash.dependencies import Output, Input
import dash_core_components as dcc
import dash_html_components as html
import requests
#from bs4 import BeautifulSoup
import plotly
import plotly.graph_objs as go
from collections import deque
#from crawldash import crawl
#import dash_table_experiments as dt
import yfinance as yf

allstk= ["HINDALCO", "ULTRACEMCO", "ICICIBANK", "SUNPHARMA", "ADANIPORTS", "SBIN", "BHARTIARTL", "LT", "INDUSINDBK", "HINDUNILVR", "AXISBANK", "GRASIM", "NESTLEIND", "GAIL", "HEROMOTOCO", "ITC", "ONGC", "KOTAKBANK", "TECHM", "TITAN", "ASIANPAINT", "INFY", "HDFCBANK", "TCS", "M&M", "TATASTEEL", "SBILIFE", "CIPLA", "MARUTI", "BAJAJ-AUTO", "UPL", "IOC", "POWERGRID", "BRITANNIA", "BAJFINANCE", "DIVISLAB", "EICHERMOT", "WIPRO", "SHREECEM", "JSWSTEEL", "BAJAJFINSV", "DRREDDY", "HCLTECH", "HDFC", "COALINDIA", "NTPC", "TATAMOTORS", "BPCL", "HDFCLIFE", "RELIANCE"]
  
def sma(data_plot):
  data_plot['SMA_50']=data_plot['Close'].rolling(50).mean()
  data_plot['SMA_20']=data_plot['Close'].rolling(20).mean()
  data_plot['SMA_10']=data_plot['Close'].rolling(10).mean()

  return data_plot
#data_plot = data_new_bank
external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)

fig_names = allstk

fig_dropdown = html.Div([
    dcc.Dropdown(
        id='fig_dropdown',
        options=[{'label': x, 'value': x} for x in fig_names],
        value='data'
    )])
fig_plot = html.Div(id='fig_plot')

app.layout = html.Div([fig_dropdown, fig_plot])


def name_to_figure(fig_name):
    #figure = go.Figure()
    if fig_name != 'data':
        #df1 = pd.read_csv("N:/Nifty_oi.csv")
        df1 = yf.download(fig_name+".NS" , period = "5y" ,inte5rval ="1d")
        df1  = sma(df1)
        df1["Timestamp"]=pd.to_datetime(df1.index)
        fig = make_subplots(rows=1, cols=1,
                    shared_xaxes=False,
                    shared_yaxes = True,
                    specs=[[{"secondary_y": True}]])

        fig.add_trace(go.Scatter(name='sma_50', x=df1["Timestamp"], y=df1['SMA_50']),
              row=1, col=1,secondary_y=False,)

        fig.add_trace(go.Scatter(name='sma_20', x=df1['Timestamp'], y=df1['SMA_20']),
              row=1, col=1,secondary_y=False)

        fig.add_trace(go.Scatter(name='sma_10', x=df1['Timestamp'], y=df1['SMA_10']),
              row=1, col=1,secondary_y=False)

        fig.add_trace(go.Scatter(name='Close', x=df1['Timestamp'], y=df1['Close']),
              row=1, col=1,secondary_y=False)
        fig.add_trace(go.Candlestick(name='Close  candle',x=df1['Timestamp'],
                open=df1['Open'],
                high=df1['High'],
                low=df1['Low'],
                close=df1['Close']),
              row=1, col=1,secondary_y=False)


        fig.update_layout(xaxis={'visible':True},title=fig_name,xaxis_title='Timestamp',yaxis_title='Sma', yaxis={ 'autorange': True})
        fig.update_layout(xaxis = dict(type="category"),height=700)
        fig.update_yaxes(secondary_y=True)
        
        fig.update_layout(
                xaxis=dict(
                    rangeselector=dict(
                        buttons=list([
                            dict(count=1,
                                 label="1m",
                                 step="month",
                                 
                                 stepmode="backward"),
                            dict(count=6,
                                 label="6m",
                                 step="month",
                                 stepmode="backward"),
                            dict(count=1,
                                 label="YTD",
                                 step="year",
                                 stepmode="todate"),
                            dict(count=1,
                                 label="1y",
                                 step="year",
                                 stepmode="backward"),
                            dict(step="all")
                        ])
                    ),
                    
                    type="date"
                )
            )
        fig.update_xaxes(showgrid=False,rangeselector_bgcolor='#111111')
        fig.update_yaxes(showgrid=False)


        def zoom(layout, xrange ,df1):
            in_view = df1.loc[fig.layout.xaxis.range[0]:fig.layout.xaxis.range[1]]
            
            fig.layout.yaxis.range = [in_view.High.min() - 10, in_view.High.max() + 10]

        fig.layout.on_change(zoom, 'xaxis.range')
        colors = {
            'background': '#111111',
            'bgcolor': '#111111',
            'text': '#7FDBFF'
        }

        fig.update_layout(
            plot_bgcolor=colors['background'],
            paper_bgcolor=colors['background'],
            font_color=colors['text']
        )
   
    elif fig_name == 'data': 
        print("Select a graph from dropdown")

        df1 = yf.download("SBIN.NS" , period = "5y" ,interval ="1d")
        df1  = sma(df1)
        df1["Timestamp"]=pd.to_datetime(df1.index)
        
        fig = make_subplots(rows=1, cols=1,
                    shared_xaxes=False,
                    shared_yaxes = True,
                    specs=[[{"secondary_y": True}]])

        fig.add_trace(go.Scatter(name='sma_50', x=df1["Timestamp"], y=df1['SMA_50']),
              row=1, col=1,secondary_y=False,)

        fig.add_trace(go.Scatter(name='sma_20', x=df1['Timestamp'], y=df1['SMA_20']),
              row=1, col=1,secondary_y=False)

        fig.add_trace(go.Scatter(name='sma_10', x=df1['Timestamp'], y=df1['SMA_10']),
              row=1, col=1,secondary_y=False)

        fig.add_trace(go.Scatter(name='Close', x=df1['Timestamp'], y=df1['Close']),
              row=1, col=1,secondary_y=False)

        fig.add_trace(go.Candlestick(name='Close  candle',x=df1['Timestamp'],
                open=df1['Open'],
                high=df1['High'],
                low=df1['Low'],
                close=df1['Close']),
              row=1, col=1,secondary_y=False)


        fig.update_layout(xaxis={'visible':True, 'autorange': True},yaxis={'autorange': True},title="SBIN",xaxis_title='Timestamp',yaxis_title='Sma')
        fig.update_layout(xaxis = dict(type="category"),height=700)
        fig.update_yaxes(secondary_y=True)
        fig.update_layout(
                xaxis=dict(
                    rangeselector=dict(
                        buttons=list([
                            dict(count=1,
                                 label="1m",
                                 step="month",
                                 
                                 stepmode="backward"),
                            dict(count=6,
                                 label="6m",
                                 step="month",
                                 stepmode="backward"),
                            dict(count=1,
                                 label="YTD",
                                 step="year",
                                 stepmode="todate"),
                            dict(count=1,
                                 label="1y",
                                 step="year",
                                 stepmode="backward"),
                            dict(step="all")
                        ])
                    ),
                    
                    type="date"
                )
            )
        fig.update_xaxes(showgrid=False,rangeselector_bgcolor='#111111')
        fig.update_yaxes(showgrid=False)
        colors = {
            'background': '#111111',
            'text': '#7FDBFF'
        }

        fig.update_layout(
            plot_bgcolor=colors['background'],
            paper_bgcolor=colors['background'],
            font_color=colors['text'],
            barmode='group'
        ) 
    return dcc.Graph(figure=fig)

@app.callback(dash.dependencies.Output('fig_plot', 'children'),
[dash.dependencies.Input('fig_dropdown', 'value')])
def update_output(fig_name):
    return name_to_figure(fig_name)
  
app.run_server(debug=True, use_reloader=False)
