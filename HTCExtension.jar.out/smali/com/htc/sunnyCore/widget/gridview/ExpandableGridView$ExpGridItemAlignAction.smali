.class Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "ExpandableGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpGridItemAlignAction"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM_COLLAPSE:I = 0x1

.field public static final ALIGN_BOTTOM_DELETE:I = 0x2

.field public static final ALIGN_EXPANDED_PARENT_UPPER:I = 0x3

.field public static final ALIGN_TOP:I = 0x0

.field public static final LOG_TAG:Ljava/lang/String; = "ExpGridItemAlignAction"


# instance fields
.field private mAlignMode:I

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "szName"

    .prologue
    .line 3221
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 3222
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "szName"
    .parameter "alignMode"

    .prologue
    .line 3214
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 3215
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3216
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    .line 3217
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 3270
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 7
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 3227
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->update()V

    .line 3228
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v0

    .line 3230
    .local v0, pos:I
    if-eqz v0, :cond_2

    .line 3232
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v1, :cond_1

    .line 3233
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v2, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->onScrollMotionIRT(II)V

    .line 3263
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    :goto_1
    return v1

    .line 3236
    :cond_1
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    neg-int v4, v0

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->onScrollMotionIRT(II)V

    goto :goto_0

    .line 3241
    :cond_2
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@ ExpGridItemAlignAction, stop, mAlignMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    :cond_3
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z
    invoke-static {v3, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$202(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 3243
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->reportScrollStateChange(I)V

    .line 3245
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    if-nez v3, :cond_4

    .line 3246
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z
    invoke-static {v3, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2302(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 3247
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3248
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onPrepareReadyIRT(I)V

    goto :goto_0

    .line 3251
    :cond_4
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    if-ne v3, v6, :cond_5

    .line 3252
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v3, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 3253
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z
    invoke-static {v3, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2302(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 3254
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3255
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I
    invoke-static {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I
    invoke-static {v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2200(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onDeleteAllChildsReadyIRT(II)V

    goto/16 :goto_0

    .line 3258
    :cond_5
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3259
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v3, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1402(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)I

    .line 3260
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V
    invoke-static {v3, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 3263
    goto/16 :goto_1
.end method
