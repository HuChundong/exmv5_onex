.class public abstract Lcom/htc/sunnyCore/widget/presentation/SAdapterView;
.super Lcom/htc/sunnyCore/view/ScissorViewGroup;
.source "SAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/widget/presentation/SAdapterView$SAdapterDataSetObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mDataSetObserver:Lcom/htc/sunnyCore/widget/presentation/SAdapterView$SAdapterDataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 1
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/view/ScissorViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunnyCore/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract notifyDataSetChanged()V
.end method

.method protected abstract notifyUpdateItem(I)V
.end method
