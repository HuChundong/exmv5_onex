.class public Lcom/olaworks/define/Ola_Genernal$Ola_JniLibrary;
.super Ljava/lang/Object;
.source "Ola_Genernal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/olaworks/define/Ola_Genernal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ola_JniLibrary"
.end annotation


# static fields
.field public static final OLA_JNI_LIB:Ljava/lang/String; = "OlaEngineNew"

.field private static final TAG:Ljava/lang/String; = "Ola_JniLibrary"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLibrary()V
    .locals 4

    :try_start_0
    const-string v2, "OlaEngineNew"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Ola_JniLibrary"

    const-string v3, "Howard SecurityException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    throw v2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "Ola_JniLibrary"

    const-string v3, "Howard UnsatisfiedLinkError"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
