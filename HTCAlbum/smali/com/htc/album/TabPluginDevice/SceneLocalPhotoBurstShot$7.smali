.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter

    .prologue
    .line 2790
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView2;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView2",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Lcom/htc/widget/HtcAdapterView2;,"Lcom/htc/widget/HtcAdapterView2<*>;"
    const v4, 0x7f09000f

    .line 2794
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)I

    move-result v2

    if-eq p3, v2, :cond_2

    .line 2795
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/widget/HtcAdapterView2;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, v2, v3

    .line 2796
    .local v1, viewId:I
    if-ltz v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcAdapterView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2797
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcAdapterView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2799
    :cond_0
    if-eqz p2, :cond_1

    .line 2801
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2802
    .local v0, imageview:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2804
    .end local v0           #imageview:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setPosition(I)V
    invoke-static {v2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;I)V

    .line 2805
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setSelectedItemToVisible()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    .line 2806
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->updateContinuousIndicator()V

    .line 2808
    .end local v1           #viewId:I
    :cond_2
    return-void
.end method
