.class public abstract Lcom/htc/sunny/SAdapterView;
.super Lcom/htc/sunny/SView;
.source "SAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 1
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 1
    .parameter "context"
    .parameter "surfaceView"
    .parameter "bRenderOrder"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract notifyDataSetChanged()V
.end method

.method protected abstract notifyUpdateItem(I)V
.end method
