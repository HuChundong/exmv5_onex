.class Lcom/android/server/SUPLServer;
.super Ljava/lang/Object;
.source "SUPLServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field public static final CONFIG_PATH:Ljava/lang/String; = "/system/bin/SuplConfig.spl"

.field private static final DEBUG:Z = false

.field private static final GPS_CONF_PATH:Ljava/lang/String; = "/etc/gps.conf"

.field public static Impl:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SUPLServer"

.field private static PROTOCOL_TYPE_TAG:Ljava/lang/String; = null

.field private static Pass:Ljava/lang/String; = null

.field private static Path:Ljava/lang/String; = null

.field private static SLP_TYPE_TAG:Ljava/lang/String; = null

.field private static SUPL_HOST_TAG:Ljava/lang/String; = null

.field private static SUPL_PORT_TAG:Ljava/lang/String; = null

.field private static SUPL_TLS_CERT_TAG:Ljava/lang/String; = null

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "2"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "2"


# instance fields
.field private SLPThread:Ljava/lang/Thread;

.field private TestThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private final mSuplServer:Lcom/android/server/SUPLService;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "/certificate/client_keystore.bks"

    sput-object v0, Lcom/android/server/SUPLServer;->Path:Ljava/lang/String;

    .line 67
    const-string v0, "Socket"

    sput-object v0, Lcom/android/server/SUPLServer;->Impl:Ljava/lang/String;

    .line 68
    const-string v0, "123456"

    sput-object v0, Lcom/android/server/SUPLServer;->Pass:Ljava/lang/String;

    .line 71
    const-string v0, "SUPL_TLS_CERT"

    sput-object v0, Lcom/android/server/SUPLServer;->SUPL_TLS_CERT_TAG:Ljava/lang/String;

    .line 72
    const-string v0, "PROTOCOL_TYPE"

    sput-object v0, Lcom/android/server/SUPLServer;->PROTOCOL_TYPE_TAG:Ljava/lang/String;

    .line 73
    const-string v0, "SLP_TYPE"

    sput-object v0, Lcom/android/server/SUPLServer;->SLP_TYPE_TAG:Ljava/lang/String;

    .line 74
    const-string v0, "SUPL_HOST"

    sput-object v0, Lcom/android/server/SUPLServer;->SUPL_HOST_TAG:Ljava/lang/String;

    .line 75
    const-string v0, "SUPL_PORT"

    sput-object v0, Lcom/android/server/SUPLServer;->SUPL_PORT_TAG:Ljava/lang/String;

    .line 83
    const-string v0, "suplhelperservicejni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/android/server/SUPLService;Landroid/content/Context;)V
    .locals 0
    .parameter "suplserv"
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/SUPLServer;->mSuplServer:Lcom/android/server/SUPLService;

    .line 94
    iput-object p2, p0, Lcom/android/server/SUPLServer;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method private native nativeStartSocketServer()Z
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 8
    .parameter "client"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 258
    const/4 v2, 0x0

    .line 261
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 262
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 264
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 266
    const/4 v4, 0x1

    .line 270
    .local v4, result:Z
    if-eqz v3, :cond_2

    .line 272
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v5, v4

    :goto_0
    move-object v2, v3

    .line 278
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return v5

    .line 267
    .end local v4           #result:Z
    :catch_0
    move-exception v1

    .line 268
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 270
    .restart local v4       #result:Z
    if-eqz v2, :cond_0

    .line 272
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 273
    :catch_1
    move-exception v1

    .line 274
    .local v1, e:Ljava/io/IOException;
    goto :goto_1

    .line 270
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_1

    .line 272
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 270
    :cond_1
    :goto_4
    throw v5

    .line 273
    :catch_2
    move-exception v1

    .line 274
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_4

    .line 273
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :catch_3
    move-exception v1

    .line 274
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_0

    .line 270
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 267
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_2
    move v5, v4

    goto :goto_0
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 167
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 177
    :try_start_0
    new-instance v8, Landroid/supl/config/SuplConfig;

    invoke-direct {v8}, Landroid/supl/config/SuplConfig;-><init>()V

    .line 178
    .local v8, spl:Landroid/supl/config/SuplConfig;
    const-string v15, "/system/bin/SuplConfig.spl"

    invoke-virtual {v8, v15}, Landroid/supl/config/SuplConfig;->readConfigPath(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->PrintConfig()V

    .line 182
    const-string v15, "ro.cid"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, cid:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/etc/gps.conf_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, pathName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .local v3, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 189
    const-string v5, "/etc/gps.conf_default"

    .line 190
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 194
    const-string v5, "/etc/gps.conf"

    .line 195
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    :goto_1
    :try_start_3
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 203
    .local v6, properties:Ljava/util/Properties;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    .local v12, stream:Ljava/io/FileInputStream;
    invoke-virtual {v6, v12}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 205
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 207
    sget-object v15, Lcom/android/server/SUPLServer;->SUPL_TLS_CERT_TAG:Ljava/lang/String;

    const-string v16, "/etc/SuplRootCert"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, storePath:Ljava/lang/String;
    sget-object v15, Lcom/android/server/SUPLServer;->PROTOCOL_TYPE_TAG:Ljava/lang/String;

    const-string v16, "Non_TLS"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, protocolType:Ljava/lang/String;
    sget-object v15, Lcom/android/server/SUPLServer;->SLP_TYPE_TAG:Ljava/lang/String;

    const-string v16, "FQDN_PHONE"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, splType:Ljava/lang/String;
    sget-object v15, Lcom/android/server/SUPLServer;->SUPL_HOST_TAG:Ljava/lang/String;

    const-string v16, "supl.google.com"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 211
    .local v13, suplHost:Ljava/lang/String;
    sget-object v15, Lcom/android/server/SUPLServer;->SUPL_PORT_TAG:Ljava/lang/String;

    const-string v16, "7276"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 212
    .local v14, suplPort:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, splhost_port:Ljava/lang/String;
    invoke-static {v11}, Landroid/supl/CNet;->SetPath(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getImplType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/supl/CNet;->SetImpl(Ljava/lang/String;)V

    .line 219
    invoke-static {v7}, Landroid/supl/CNet;->SetProtocolType(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->isLocalhost()Z

    move-result v15

    sput-boolean v15, Landroid/supl/CNet;->localhost:Z

    .line 222
    sput-object v10, Landroid/supl/CNet;->slphost_port:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SUPLServer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/supl/CNet;->SetContext(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getAutoFqdnStorePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/supl/CNetSSLSocketProvider;->SetAutoFqdnStorePath(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getStorePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/supl/CNetSSLSocketProvider;->SetFqdnPhoneStorePath(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SUPLServer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->Init(Landroid/content/Context;)V

    .line 233
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getMcc()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetMcc(I)V

    .line 234
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getMnc()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetMnc(I)V

    .line 235
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getLac()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetLac(I)V

    .line 236
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getCi()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetCi(I)V

    .line 237
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getCellType()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetCellType(I)V

    .line 238
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getMsisdn()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetMsisdn(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getHmcc()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetHMcc(I)V

    .line 240
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getHmnc()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetHMnc(I)V

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SUPLServer;->nativeStartSocketServer()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 244
    .end local v1           #cid:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #pathName:Ljava/lang/String;
    .end local v6           #properties:Ljava/util/Properties;
    .end local v7           #protocolType:Ljava/lang/String;
    .end local v8           #spl:Landroid/supl/config/SuplConfig;
    .end local v9           #splType:Ljava/lang/String;
    .end local v10           #splhost_port:Ljava/lang/String;
    .end local v11           #storePath:Ljava/lang/String;
    .end local v12           #stream:Ljava/io/FileInputStream;
    .end local v13           #suplHost:Ljava/lang/String;
    .end local v14           #suplPort:Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_4
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    const-string v15, "SUPLServer"

    const-string v16, "Connection error: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 249
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v15

    throw v15

    .line 198
    .restart local v1       #cid:Ljava/lang/String;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #pathName:Ljava/lang/String;
    .restart local v8       #spl:Landroid/supl/config/SuplConfig;
    :catch_1
    move-exception v2

    .line 199
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 254
    .end local v1           #cid:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #pathName:Ljava/lang/String;
    .end local v8           #spl:Landroid/supl/config/SuplConfig;
    :cond_1
    return-void

    .line 198
    .restart local v1       #cid:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #pathName:Ljava/lang/String;
    .restart local v8       #spl:Landroid/supl/config/SuplConfig;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_2

    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :cond_2
    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto/16 :goto_1
.end method

.method start()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/server/SUPLServer;->SLPThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SLP Server"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    .line 119
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SLP Client Thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->SLPThread:Ljava/lang/Thread;

    .line 120
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "===>>TEST Thread <<<=="

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->TestThread:Ljava/lang/Thread;

    .line 122
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    const/4 v0, 0x1

    goto :goto_0
.end method

.method stop()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
