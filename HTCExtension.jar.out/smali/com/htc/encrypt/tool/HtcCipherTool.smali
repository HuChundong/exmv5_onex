.class public Lcom/htc/encrypt/tool/HtcCipherTool;
.super Ljava/lang/Object;
.source "HtcCipherTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doDecrypt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "inPath"
    .parameter "outPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/htc/encrypt/FileCrypto;->createDecryptedFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrypt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, result:Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private static doEncrypt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "inPath"
    .parameter "outPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/htc/encrypt/FileCrypto;->createEncryptedFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encrypt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, result:Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private static getBriefUsage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "Usage: java -jar HtcCipherTool.jar {-e|-d} inputFile outputFile"

    return-object v0
.end method

.method private static getOptionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, "  -e\t encrypt inputFile to outputFile\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "  -d\t decrypt inputFile to outputFile\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "HtcCipherTool 1.03 of January 2012, by HTC."

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 28
    array-length v3, p0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 29
    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->printUsage()V

    .line 47
    :goto_0
    return-void

    .line 33
    :cond_0
    aget-object v3, p0, v5

    const-string v4, "-e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p0, v5

    const-string v4, "-d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->printUsage()V

    goto :goto_0

    .line 38
    :cond_1
    aget-object v3, p0, v5

    const-string v4, "-e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 39
    .local v1, isEncrypt:Z
    const/4 v3, 0x1

    aget-object v0, p0, v3

    .line 40
    .local v0, inPath:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v2, p0, v3

    .line 42
    .local v2, outPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 43
    invoke-static {v0, v2}, Lcom/htc/encrypt/tool/HtcCipherTool;->doEncrypt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v0, v2}, Lcom/htc/encrypt/tool/HtcCipherTool;->doDecrypt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static printUsage()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->getBriefUsage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->getOptionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    return-void
.end method
