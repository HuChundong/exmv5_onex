.class public Lcom/htc/sunnyCore/widget/presentation/SBaseAdapter;
.super Ljava/lang/Object;
.source "SBaseAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mDataSetObservable:Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;->notifyChanged()V

    .line 53
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;->notifyInvalidated()V

    .line 67
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;->notifyChanged(I)V

    .line 60
    return-void
.end method

.method public registerDataSetObserver(Lcom/htc/sunnyCore/widget/presentation/SDataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public unregisterDataSetObserver(Lcom/htc/sunnyCore/widget/presentation/SDataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/presentation/SDataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
