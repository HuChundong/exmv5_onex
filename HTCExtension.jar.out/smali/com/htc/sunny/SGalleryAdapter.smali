.class public abstract Lcom/htc/sunny/SGalleryAdapter;
.super Lcom/htc/sunny/SBaseAdapter;
.source "SGalleryAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/sunny/SBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getItemCount()I
.end method

.method public abstract getView(Lcom/htc/sunny/SView;I)Lcom/htc/sunny/SView;
.end method
