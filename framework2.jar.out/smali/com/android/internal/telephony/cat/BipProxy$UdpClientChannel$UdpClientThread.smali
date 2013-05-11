.class Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UdpClientThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1862
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIP - UdpClientThread: UDP Client thread start on channel no: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v6, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1864
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    if-eqz v5, :cond_2

    .line 1866
    const/4 v2, 0x0

    .line 1867
    .local v2, packet:Ljava/net/DatagramPacket;
    const/4 v4, 0x0

    .line 1871
    .local v4, success:Z
    :try_start_0
    new-instance v3, Ljava/net/DatagramPacket;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    array-length v6, v6

    invoke-direct {v3, v5, v6}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1872
    .end local v2           #packet:Ljava/net/DatagramPacket;
    .local v3, packet:Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1873
    const/4 v4, 0x1

    move-object v2, v3

    .line 1880
    .end local v3           #packet:Ljava/net/DatagramPacket;
    .restart local v2       #packet:Ljava/net/DatagramPacket;
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    .line 1881
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1894
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-gtz v5, :cond_5

    .line 1895
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "BIP - UdpClientThread: No data read."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1909
    .end local v2           #packet:Ljava/net/DatagramPacket;
    .end local v4           #success:Z
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIP - UdpClientThread: UDP Client thread end on channel no: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v6, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1910
    :cond_3
    return-void

    .line 1874
    .restart local v2       #packet:Ljava/net/DatagramPacket;
    .restart local v4       #success:Z
    :catch_0
    move-exception v1

    .line 1875
    .local v1, e:Ljava/io/IOException;
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIP - UdpClientThread: Read on No: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v6, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1876
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1877
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIP - UdpClientThread: IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1883
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 1885
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v6, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    .line 1886
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v6, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxBuf:[B

    .line 1887
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v7, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 1888
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v7, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1889
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v7, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    .line 1890
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v7, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    goto/16 :goto_1

    .line 1898
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v7, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 1899
    const/16 v0, 0xff

    .line 1900
    .local v0, available:I
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-ge v5, v0, :cond_6

    .line 1901
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v0, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1905
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v6, v6, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/cat/BipProxy;->access$700(Lcom/android/internal/telephony/cat/BipProxy;II)V

    goto/16 :goto_2

    .line 1876
    .end local v0           #available:I
    .end local v2           #packet:Ljava/net/DatagramPacket;
    .restart local v3       #packet:Ljava/net/DatagramPacket;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #packet:Ljava/net/DatagramPacket;
    .restart local v2       #packet:Ljava/net/DatagramPacket;
    goto :goto_4

    .line 1874
    .end local v2           #packet:Ljava/net/DatagramPacket;
    .restart local v3       #packet:Ljava/net/DatagramPacket;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #packet:Ljava/net/DatagramPacket;
    .restart local v2       #packet:Ljava/net/DatagramPacket;
    goto/16 :goto_3
.end method
