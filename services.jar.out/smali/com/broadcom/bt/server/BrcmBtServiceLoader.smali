.class public Lcom/broadcom/bt/server/BrcmBtServiceLoader;
.super Ljava/lang/Object;
.source "BrcmBtServiceLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BrcmBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadServices(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 10
    const-string v0, "BrcmBtServiceLoader"

    const-string v1, "Nothing need to do when current stack configuration is not Broadcom BTLA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
.end method
