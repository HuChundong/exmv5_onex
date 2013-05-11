.class public Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
.source "AdapterBurstPhoto.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterBurstPhoto"

.field static final NAME:Ljava/lang/String; = "AdapterBurstPhoto"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"
    .parameter "collection"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 0
    .parameter "activity"
    .parameter "handler"
    .parameter "collection"
    .parameter "isPartialLoad"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "AdapterBurstPhoto"

    return-object v0
.end method
