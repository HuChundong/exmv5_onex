.class public Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;
.super Landroid/widget/BaseAdapter;
.source "ControlButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BubbleAdapter"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 486
    const-class v0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/modules/ui/widget/BubbleButton;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 493
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 494
    iput-object p2, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    .line 495
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 520
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 526
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    move-object v2, p2

    .line 545
    .end local p2
    .local v2, convertView:Landroid/view/View;
    :goto_0
    return-object v2

    .line 529
    .end local v2           #convertView:Landroid/view/View;
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 531
    .local v0, bubbleButton:Lcom/htc/album/modules/ui/widget/BubbleButton;
    if-nez p2, :cond_3

    .line 533
    iget-object v5, p0, Lcom/htc/album/modules/ui/widget/ControlButton$BubbleAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 534
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_2

    move-object v2, p2

    .line 535
    .end local p2
    .restart local v2       #convertView:Landroid/view/View;
    goto :goto_0

    .line 537
    .end local v2           #convertView:Landroid/view/View;
    .restart local p2
    :cond_2
    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 538
    .local v3, inflator:Landroid/view/LayoutInflater;
    const/high16 v5, 0x7f03

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/htc/widget/HtcListItem;

    .restart local p2
    move-object v4, p2

    .line 539
    check-cast v4, Lcom/htc/widget/HtcListItem;

    .line 540
    .local v4, item:Lcom/htc/widget/HtcListItem;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .end local v1           #context:Landroid/content/Context;
    .end local v3           #inflator:Landroid/view/LayoutInflater;
    .end local v4           #item:Lcom/htc/widget/HtcListItem;
    :cond_3
    move-object v5, p2

    .line 543
    check-cast v5, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/BubbleButton;->loadDataToView(Lcom/htc/widget/HtcListItem;)V

    move-object v2, p2

    .line 545
    .end local p2
    .restart local v2       #convertView:Landroid/view/View;
    goto :goto_0
.end method
