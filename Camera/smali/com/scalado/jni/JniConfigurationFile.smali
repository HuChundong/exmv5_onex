.class public Lcom/scalado/jni/JniConfigurationFile;
.super Ljava/lang/Object;
.source "JniConfigurationFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v3, Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v7, "\\s*=\\s*"

    invoke-virtual {v3, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v6

    :cond_0
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    throw v7

    :catch_0
    move-exception v0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JNI - WARNING: Could not get value of keyword "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from configuration file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    return-object v5
.end method
