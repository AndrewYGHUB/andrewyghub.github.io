<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="zh-CN">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title><xsl:value-of select="/rss/channel/title"/> - RSS Feed</title>
        <style>
          * { margin: 0; padding: 0; box-sizing: border-box; }
          body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            min-height: 100vh;
            color: #e0e0e0;
          }
          .header {
            text-align: center;
            padding: 60px 20px 40px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            position: relative;
            overflow: hidden;
          }
          .header::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 60%);
            animation: pulse 4s ease-in-out infinite;
          }
          @keyframes pulse {
            0%, 100% { transform: scale(1); opacity: 0.5; }
            50% { transform: scale(1.1); opacity: 0.8; }
          }
          .header h1 {
            font-size: 2.2em;
            color: #fff;
            position: relative;
            text-shadow: 0 2px 10px rgba(0,0,0,0.3);
          }
          .header .rss-icon {
            font-size: 3em;
            margin-bottom: 16px;
            position: relative;
            display: inline-block;
            animation: float 3s ease-in-out infinite;
          }
          @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
          }
          .header p {
            color: rgba(255,255,255,0.85);
            margin-top: 12px;
            font-size: 1.1em;
            position: relative;
          }
          .header .subscribe-hint {
            margin-top: 20px;
            position: relative;
          }
          .header .subscribe-hint code {
            background: rgba(255,255,255,0.2);
            padding: 8px 20px;
            border-radius: 20px;
            color: #fff;
            font-size: 0.9em;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.3);
          }
          .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 30px 20px 60px;
          }
          .stats {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin: -25px auto 30px;
            position: relative;
            z-index: 1;
          }
          .stat-card {
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.15);
            padding: 16px 28px;
            border-radius: 12px;
            text-align: center;
            color: #fff;
          }
          .stat-card .num {
            font-size: 1.8em;
            font-weight: bold;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
          }
          .stat-card .label { font-size: 0.85em; color: #aaa; margin-top: 4px; }
          .post-card {
            background: rgba(255,255,255,0.05);
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 12px;
            padding: 24px;
            margin-bottom: 16px;
            transition: all 0.3s ease;
            backdrop-filter: blur(5px);
          }
          .post-card:hover {
            transform: translateY(-3px);
            border-color: rgba(102, 126, 234, 0.5);
            box-shadow: 0 8px 30px rgba(102, 126, 234, 0.15);
          }
          .post-card h2 {
            font-size: 1.2em;
            margin-bottom: 8px;
          }
          .post-card h2 a {
            color: #a8b8ff;
            text-decoration: none;
            transition: color 0.2s;
          }
          .post-card h2 a:hover { color: #667eea; }
          .post-card .date {
            font-size: 0.85em;
            color: #888;
            margin-bottom: 10px;
          }
          .post-card .excerpt {
            color: #bbb;
            font-size: 0.95em;
            line-height: 1.6;
            max-height: 4.8em;
            overflow: hidden;
            text-overflow: ellipsis;
          }
          .post-index {
            display: inline-block;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #fff;
            width: 28px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            border-radius: 50%;
            font-size: 0.8em;
            margin-right: 10px;
            flex-shrink: 0;
          }
          .footer {
            text-align: center;
            padding: 30px;
            color: #666;
            font-size: 0.85em;
          }
        </style>
      </head>
      <body>
        <div class="header">
          <div class="rss-icon">&#x1F4E1;</div>
          <h1><xsl:value-of select="/rss/channel/title"/></h1>
          <p><xsl:value-of select="/rss/channel/description"/></p>
          <div class="subscribe-hint">
            <code>&#x1F517; &#x590D;&#x5236;&#x5F53;&#x524D;&#x7F51;&#x5740;&#x5230; RSS &#x9605;&#x8BFB;&#x5668;&#x5373;&#x53EF;&#x8BA2;&#x9605;</code>
          </div>
        </div>
        <div class="container">
          <div class="stats">
            <div class="stat-card">
              <div class="num"><xsl:value-of select="count(/rss/channel/item)"/></div>
              <div class="label">&#x6587;&#x7AE0;&#x603B;&#x6570;</div>
            </div>
            <div class="stat-card">
              <div class="num"><xsl:value-of select="/rss/channel/item[1]/pubDate"/></div>
              <div class="label">&#x6700;&#x8FD1;&#x66F4;&#x65B0;</div>
            </div>
          </div>
          <xsl:for-each select="/rss/channel/item">
            <div class="post-card">
              <h2>
                <span class="post-index"><xsl:value-of select="position()"/></span>
                <a href="{link}" target="_blank"><xsl:value-of select="title"/></a>
              </h2>
              <div class="date"><xsl:value-of select="pubDate"/></div>
              <div class="excerpt"><xsl:value-of select="substring(description, 1, 200)"/>...</div>
            </div>
          </xsl:for-each>
        </div>
        <div class="footer">
          &#x1F4E1; RSS Feed &#x00B7; Powered by Jekyll
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
