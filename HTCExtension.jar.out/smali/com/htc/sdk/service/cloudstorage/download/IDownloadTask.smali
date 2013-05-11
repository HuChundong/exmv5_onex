.class public interface abstract Lcom/htc/sdk/service/cloudstorage/download/IDownloadTask;
.super Ljava/lang/Object;
.source "IDownloadTask.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract isDone()Z
.end method

.method public abstract start()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method
