.class public interface abstract Lcom/htc/sunnyCore/IMediaList;
.super Ljava/lang/Object;
.source "IMediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/IMediaList$ChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MediaData::",
        "Lcom/htc/sunnyCore/IMediaData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMediaData;"
        }
    .end annotation
.end method
