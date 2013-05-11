.class public interface abstract Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
.super Ljava/lang/Object;
.source "IMetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;
    }
.end annotation


# virtual methods
.method public abstract getBitRate()I
.end method

.method public abstract getDate()Ljava/lang/String;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getFileSize()I
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract hasAudio()Z
.end method

.method public abstract hasVideo()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract prepare()V
.end method

.method public abstract setListener(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
