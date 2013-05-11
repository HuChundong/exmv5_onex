.class public abstract Lcom/htc/cscore/plugin/CSSyncAdapter;
.super Ljava/lang/Object;
.source "CSSyncAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CS_FEATURE_NAME:Ljava/lang/String; = "htcconnectedservice"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "CSSyncAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectSyncItem(Lcom/htc/cscore/plugin/CSTransport;I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasULData()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onCancelled(Landroid/content/Context;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract receiveDLData(Lcom/htc/cscore/plugin/CSTransport;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract receivedFMDLData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestForAdd(Lcom/htc/cscore/plugin/CSTransport;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/cscore/plugin/CSTransport;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestForUpdate(Lcom/htc/cscore/plugin/CSTransport;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/cscore/plugin/CSTransport;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendULData(Lcom/htc/cscore/plugin/CSTransport;Landroid/os/Bundle;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
