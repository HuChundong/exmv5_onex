.class Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;
.super Ljava/lang/Object;
.source "BipProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/BipProxy$BipChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcpClientChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;
    }
.end annotation


# instance fields
.field mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

.field mChannelStatus:I

.field mRxBuf:[B

.field mRxLen:I

.field mRxPos:I

.field mSocket:Ljava/net/Socket;

.field mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

.field mTxBuf:[B

.field mTxLen:I

.field mTxPos:I

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x4000

    const/4 v1, 0x0

    .line 1311
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 1314
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1316
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    .line 1320
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    .line 1321
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1322
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1324
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    .line 1325
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    .line 1326
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1554
    return-void
.end method


# virtual methods
.method public close(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 7
    .parameter "cmdMsg"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1383
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - close: TcpClientChannel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1387
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BIP - open: Try to close Socket"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :cond_2
    :goto_0
    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    .line 1395
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1396
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1397
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    .line 1398
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1401
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1402
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$600(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z
    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$800(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z

    .line 1408
    return-void

    .line 1389
    :catch_0
    move-exception v6

    .line 1390
    .local v6, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - open: IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSocketData()V
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1549
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->start()V

    .line 1552
    :cond_1
    return-void
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1527
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - getStatus: TcpClientChannel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1532
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    return v0
.end method

.method public onSessionEnd()V
    .locals 1

    .prologue
    .line 1538
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - onSessionEnd: TcpClientChannel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1541
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    .line 1542
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->start()V

    .line 1544
    :cond_2
    return-void
.end method

.method public open(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 14
    .parameter "cmdMsg"

    .prologue
    const/16 v1, 0x4000

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1331
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - open: TcpClientChannel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1335
    .local v2, result:Lcom/android/internal/telephony/cat/ResultCode;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    if-le v0, v1, :cond_1

    .line 1339
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 1348
    :goto_0
    const/4 v12, 0x0

    .line 1349
    .local v12, addr:Ljava/net/InetAddress;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-ne v0, v1, :cond_2

    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v12

    .line 1355
    :goto_1
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-direct {v0, v12, v1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    .line 1360
    const v0, 0x8000

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    .line 1361
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1362
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1365
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$600(Lcom/android/internal/telephony/cat/BipProxy;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;-><init>(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mThread:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->start()V

    .line 1377
    :goto_2
    return v9

    .line 1342
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .end local v12           #addr:Ljava/net/InetAddress;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    .line 1343
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    goto :goto_0

    .line 1352
    .restart local v12       #addr:Ljava/net/InetAddress;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_1

    .line 1366
    :catch_0
    move-exception v13

    .line 1367
    .local v13, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - open: OPEN_CHANNEL - Client connection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v1, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1369
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1371
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z
    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$800(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z

    move v9, v10

    .line 1373
    goto :goto_2
.end method

.method public receive(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 10
    .parameter "cmdMsg"

    .prologue
    const/4 v3, 0x0

    .line 1479
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - receive: TcpClientChannel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1481
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1482
    .local v2, result:Lcom/android/internal/telephony/cat/ResultCode;
    const/4 v5, 0x0

    .line 1484
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - receive: RECEIVE_DATA on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1486
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v0

    iget v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 1487
    .local v9, requested:I
    const/16 v0, 0xec

    if-le v9, v0, :cond_2

    .line 1497
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1498
    const/16 v9, 0xec

    .line 1500
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-le v9, v0, :cond_3

    .line 1501
    iget v9, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1502
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1505
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    sub-int/2addr v0, v9

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1506
    const/16 v6, 0xff

    .line 1507
    .local v6, available:I
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-ge v0, v6, :cond_4

    .line 1508
    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1510
    :cond_4
    const/4 v7, 0x0

    .line 1511
    .local v7, data:[B
    if-lez v9, :cond_5

    .line 1512
    new-array v7, v9, [B

    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    invoke-static {v0, v1, v7, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1514
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1517
    :cond_5
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 1520
    .local v8, hexString:Ljava/lang/String;
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v5, v7, v6}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 1521
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1522
    return-void
.end method

.method public send(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 12
    .parameter "cmdMsg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1413
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - send: TcpClientChannel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1415
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v7

    .line 1416
    .local v7, dataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - send: SEND_DATA on channel no: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1419
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BIP - send: Transfer data into tx buffer"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1420
    :cond_2
    const/4 v10, 0x0

    .line 1422
    .local v10, i:I
    :goto_0
    iget-object v0, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v0, v0

    if-ge v10, v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    iget-object v2, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    aget-byte v2, v2, v10

    aput-byte v2, v0, v1

    .line 1423
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1426
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1430
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 1432
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    .line 1433
    iget v11, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1434
    .local v11, len:I
    iput v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    .line 1438
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_5

    .line 1439
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BIP - send: Socket not available."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1440
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1441
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1474
    .end local v11           #len:I
    :goto_1
    return-void

    .line 1446
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v11       #len:I
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 1449
    .local v9, hexString:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    .end local v9           #hexString:Ljava/lang/String;
    .end local v11           #len:I
    :cond_6
    const/16 v6, 0xee

    .line 1461
    .local v6, avail:I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    if-eqz v0, :cond_7

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    sub-int v6, v0, v1

    .line 1466
    const/16 v0, 0xff

    if-le v6, v0, :cond_7

    .line 1467
    const/16 v6, 0xff

    .line 1472
    :cond_7
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1473
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 1452
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .end local v6           #avail:I
    .restart local v11       #len:I
    :catch_0
    move-exception v8

    .line 1453
    .local v8, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - send: IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1454
    :cond_8
    new-instance v5, Lcom/android/internal/telephony/cat/SendDataResponseData;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 1455
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1
.end method
