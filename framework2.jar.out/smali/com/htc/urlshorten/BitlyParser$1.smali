.class Lcom/htc/urlshorten/BitlyParser$1;
.super Ljava/lang/Thread;
.source "BitlyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/urlshorten/BitlyParser;->shortenUrl(Ljava/lang/String;Landroid/os/Handler;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/urlshorten/BitlyParser;


# direct methods
.method constructor <init>(Lcom/htc/urlshorten/BitlyParser;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/urlshorten/BitlyParser$1;->this$0:Lcom/htc/urlshorten/BitlyParser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 94
    .local v6, strQueryUrl:Ljava/lang/String;
    const-string v8, "http://api.bit.ly/shorten?"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "version"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "2.0.1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "login"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isatohon"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "apiKey"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "R_73181003c01f32ec9a87c8916e6e0cee"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "format"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "longUrl"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$000()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 120
    .local v0, conn:Ljava/net/URLConnection;
    const/16 v8, 0xfa0

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 122
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 123
    .local v5, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 124
    .local v4, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 125
    .local v7, xr:Lorg/xml/sax/XMLReader;
    iget-object v8, p0, Lcom/htc/urlshorten/BitlyParser$1;->this$0:Lcom/htc/urlshorten/BitlyParser;

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 126
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 129
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 130
    .local v2, msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$100()I

    move-result v8

    iput v8, v2, Landroid/os/Message;->what:I

    .line 131
    iget-object v8, p0, Lcom/htc/urlshorten/BitlyParser$1;->this$0:Lcom/htc/urlshorten/BitlyParser;

    #getter for: Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;
    invoke-static {v8}, Lcom/htc/urlshorten/BitlyParser;->access$200(Lcom/htc/urlshorten/BitlyParser;)Lcom/htc/urlshorten/BitlyInfo;

    move-result-object v8

    iput-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$300()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 159
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v4           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v7           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 134
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/net/SocketTimeoutException;
    const-string v8, "KENLOG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<BitlyParser.getShorterUrl> e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 137
    .restart local v2       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$400()I

    move-result v8

    iput v8, v2, Landroid/os/Message;->what:I

    .line 138
    iput-object v11, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$300()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 140
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    .end local v2           #msg:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 141
    .local v1, e:Ljava/io/IOException;
    const-string v8, "KENLOG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<BitlyParser.getShorterUrl> e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 143
    .restart local v2       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$400()I

    move-result v8

    iput v8, v2, Landroid/os/Message;->what:I

    .line 144
    iput-object v11, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$300()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 146
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #msg:Landroid/os/Message;
    :catch_2
    move-exception v1

    .line 147
    .local v1, e:Lorg/xml/sax/SAXException;
    const-string v8, "KENLOG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<BitlyParser.getShorterUrl> e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 149
    .restart local v2       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$500()I

    move-result v8

    iput v8, v2, Landroid/os/Message;->what:I

    .line 150
    iput-object v11, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$300()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 152
    .end local v1           #e:Lorg/xml/sax/SAXException;
    .end local v2           #msg:Landroid/os/Message;
    :catch_3
    move-exception v1

    .line 153
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v8, "KENLOG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<BitlyParser.getShorterUrl> e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 155
    .restart local v2       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$500()I

    move-result v8

    iput v8, v2, Landroid/os/Message;->what:I

    .line 156
    iput-object v11, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/htc/urlshorten/BitlyParser;->access$300()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
