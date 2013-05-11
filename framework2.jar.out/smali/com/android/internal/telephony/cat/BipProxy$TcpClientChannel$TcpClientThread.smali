.class Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcpClientThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1558
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - TcpClientThread: Client thread start on channel no: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1560
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_1

    .line 1563
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-gtz v2, :cond_4

    .line 1578
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BIP - TcpClientThread: No data read."

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1591
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - TcpClientThread: Client thread end on channel no: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1592
    :cond_2
    return-void

    .line 1564
    :catch_0
    move-exception v1

    .line 1565
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - TcpClientThread: Read on No: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1566
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    .line 1568
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    .line 1569
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    .line 1570
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1571
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1572
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    .line 1573
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    goto/16 :goto_0

    .line 1581
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1582
    const/16 v0, 0xff

    .line 1583
    .local v0, available:I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-ge v2, v0, :cond_5

    .line 1584
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget v0, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1588
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/cat/BipProxy;->access$700(Lcom/android/internal/telephony/cat/BipProxy;II)V

    goto/16 :goto_1
.end method
