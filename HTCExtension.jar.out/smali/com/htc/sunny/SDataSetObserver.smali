.class public abstract Lcom/htc/sunny/SDataSetObserver;
.super Ljava/lang/Object;
.source "SDataSetObserver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onChanged(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 48
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
