.class public interface abstract Lcom/htc/cscore/plugin/CSTransport;
.super Ljava/lang/Object;
.source "CSTransport.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TRANSPORT_DL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSPORT_UL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract getDirection()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRemainingPushCnt()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract readSyncMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract writeSyncMessage(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
