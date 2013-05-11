.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
.super Ljava/lang/Object;
.source "ISceneAdapter.java"


# static fields
.field public static final FLAG_REQUEST_LOAD:I = 0x1

.field public static final FLAG_REQUEST_RELOAD:I = 0x2


# virtual methods
.method public abstract enableBroadcastNotify()Z
.end method

.method public abstract getCount()I
.end method

.method public abstract getDataBundle()Landroid/os/Bundle;
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public abstract isDestroyingAdapter()Z
.end method

.method public abstract isLoadingInProgress()Z
.end method

.method public abstract notifyDestroyingAdapter()V
.end method

.method public abstract onLoadData()V
.end method

.method public abstract onUnloadData()V
.end method

.method public abstract setDataBundle(Landroid/os/Bundle;)V
.end method

.method public abstract setIntermediateDataBundle(Landroid/os/Bundle;)V
.end method
