.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcSongTask;
.super Ljava/lang/Object;
.source "HtcCloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HtcSongTask"
.end annotation


# instance fields
.field public songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcSong;",
            ">;"
        }
    .end annotation
.end field

.field public taskId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract getAbort()Z
.end method
