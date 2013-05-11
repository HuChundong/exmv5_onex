.class Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;
.super Ljava/lang/Object;
.source "ControlButton.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnShareItemClickListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field private mBubbleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V
    .locals 0
    .parameter
    .parameter "shareAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/modules/ui/widget/BubbleButton;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mBubbleList:Ljava/util/List;

    .line 139
    iput-object p2, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 140
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    .line 151
    .local v0, listener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;
    iget-object v8, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mBubbleList:Ljava/util/List;

    .line 152
    .local v8, bubbleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/modules/ui/widget/BubbleButton;>;"
    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    .line 153
    .local v6, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    invoke-static {p3, v6}, Lcom/htc/album/helper/ShareMenuManager;->getShareItemIndex(ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)I

    move-result v3

    .line 155
    .local v3, index:I
    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    .line 156
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 157
    .local v7, bubbleButton:Lcom/htc/album/modules/ui/widget/BubbleButton;
    invoke-static {}, Lcom/htc/album/modules/ui/widget/ControlButton;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnShareItemClickListener][onItemClick] bID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/htc/album/modules/ui/widget/BubbleButton;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 162
    .end local v7           #bubbleButton:Lcom/htc/album/modules/ui/widget/BubbleButton;
    :cond_0
    return-void
.end method

.method public setBubbleItemClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    .line 145
    return-void
.end method
