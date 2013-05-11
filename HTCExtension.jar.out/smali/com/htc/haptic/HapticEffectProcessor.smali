.class public abstract Lcom/htc/haptic/HapticEffectProcessor;
.super Ljava/lang/Object;
.source "HapticEffectProcessor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIvtRawData(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .parameter "ctx"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIvtRawData(Ljava/lang/String;)[B
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listEffect(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listEffect(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listEffect([B)[Ljava/lang/String;
    .locals 1
    .parameter "ivtRawData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newEffectProcess(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/haptic/HapticEffectProcessor;
    .locals 1
    .parameter "ctx"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newEffectProcess(Ljava/lang/String;)Lcom/htc/haptic/HapticEffectProcessor;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/haptic/HapticEffectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newEffectProcess([B)Lcom/htc/haptic/HapticEffectProcessor;
    .locals 1
    .parameter "ivtRawData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getEffectSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    const/4 v0, -0x1

    return v0
.end method

.method public abstract listEffect()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
