.class public interface abstract Lcom/htc/sunnyCore/ViewItem;
.super Ljava/lang/Object;
.source "ViewItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/htc/sunnyCore/IMediaData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public abstract create()Lcom/htc/sunnyCore/ViewItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunnyCore/ViewItem",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract create(Z)Lcom/htc/sunnyCore/ViewItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/htc/sunnyCore/ViewItem",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract unbindMediaData()V
.end method
