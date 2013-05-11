.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8

.field private static final DELAY_BEFORE_PASTE:I = 0x1f4

.field private static final RECENT_CUT_COPY_DURATION:I = 0x7530


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field private mPasteHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "drawable"

    .prologue
    const/4 v1, 0x1

    .line 4884
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 4885
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4887
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPos:I

    .line 4888
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mHotspotY:F

    .line 4890
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsInsertionHandle:Z

    .line 4893
    return-void
.end method

.method static synthetic access$300(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4874
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->showPasteWithoutInsertionHandle()V

    return-void
.end method

.method static synthetic access$5000(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4874
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->showWithActionPopupDelay()V

    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    .prologue
    .line 4983
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4984
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 4992
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4993
    return-void

    .line 4990
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0
.end method

.method private hidePasteAfterDelay()V
    .locals 4

    .prologue
    .line 4964
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removePasteHiderCallback()V

    .line 4965
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4966
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    .line 4972
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4973
    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 4996
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4997
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4999
    :cond_0
    return-void
.end method

.method private removePasteHiderCallback()V
    .locals 2

    .prologue
    .line 4976
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4977
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPasteHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4979
    :cond_0
    return-void
.end method

.method private showPasteWithinTimeScale()V
    .locals 11

    .prologue
    .line 4931
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 4932
    .local v3, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 4933
    .local v2, clip:Landroid/content/ClipData;
    const/4 v8, 0x0

    .line 4934
    .local v8, label:Ljava/lang/String;
    const/4 v7, 0x0

    .line 4935
    .local v7, hasHtcTimestamp:Z
    const-wide/16 v0, 0x0

    .line 4937
    .local v0, LastCutOrCopyTimeAcrossAp:J
    if-eqz v2, :cond_0

    .line 4939
    :try_start_1
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 4945
    :goto_0
    if-eqz v8, :cond_0

    :try_start_2
    const-string v9, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4946
    const/4 v7, 0x1

    .line 4947
    const-string v9, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 4951
    :cond_0
    if-eqz v7, :cond_1

    .line 4952
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v4, v9, v0

    .line 4954
    .local v4, durationSinceCutOrCopy:J
    const-wide/16 v9, 0x7530

    cmp-long v9, v4, v9

    if-gez v9, :cond_1

    .line 4955
    const/16 v9, 0x1f4

    invoke-virtual {p0, v9}, Landroid/widget/Editor$InsertionHandleView;->showActionPopupWindow(I)V

    .line 4961
    .end local v0           #LastCutOrCopyTimeAcrossAp:J
    .end local v2           #clip:Landroid/content/ClipData;
    .end local v3           #clipboard:Landroid/content/ClipboardManager;
    .end local v4           #durationSinceCutOrCopy:J
    .end local v7           #hasHtcTimestamp:Z
    .end local v8           #label:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 4940
    .restart local v0       #LastCutOrCopyTimeAcrossAp:J
    .restart local v2       #clip:Landroid/content/ClipData;
    .restart local v3       #clipboard:Landroid/content/ClipboardManager;
    .restart local v7       #hasHtcTimestamp:Z
    .restart local v8       #label:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 4941
    .local v6, e:Ljava/lang/Exception;
    const-string v9, "Editor"

    const-string v10, "GetLabel fail! Do framework orig behavior"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4942
    const/4 v8, 0x0

    goto :goto_0

    .line 4958
    .end local v0           #LastCutOrCopyTimeAcrossAp:J
    .end local v2           #clip:Landroid/content/ClipData;
    .end local v3           #clipboard:Landroid/content/ClipboardManager;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #hasHtcTimestamp:Z
    .end local v8           #label:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 4959
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v9, "Editor"

    const-string v10, "Security exception"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showPasteWithoutInsertionHandle()V
    .locals 3

    .prologue
    .line 4924
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mHtcPastePositionListener:Landroid/widget/Editor$HtcPastePositionListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4925
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->showPasteWithinTimeScale()V

    .line 4926
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hidePasteAfterDelay()V

    .line 4927
    return-void
.end method

.method private showWithActionPopupDelay()V
    .locals 3

    .prologue
    .line 4918
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mHtcPastePositionListener:Landroid/widget/Editor$HtcPastePositionListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4919
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertionHandleView;->showActionPopupWindow(I)V

    .line 4920
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hidePasteAfterDelay()V

    .line 4921
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 5060
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 5003
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 5087
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 5088
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5089
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 5081
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 5082
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5083
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    .line 5008
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 5010
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 5055
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 5012
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    .line 5013
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    .line 5015
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5016
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideActionPopupWindow()V

    goto :goto_0

    .line 5023
    :pswitch_2
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5024
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->showWithActionPopup()V

    .line 5044
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 5026
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5027
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float v0, v6, v7

    .line 5028
    .local v0, deltaX:F
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float v1, v6, v7

    .line 5029
    .local v1, deltaY:F
    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v2, v6, v7

    .line 5031
    .local v2, distanceSquared:F
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 5033
    .local v5, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 5035
    .local v4, touchSlop:I
    mul-int v6, v4, v4

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    .line 5036
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v6}, Landroid/widget/Editor$ActionPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5038
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v6}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_1

    .line 5040
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->showWithActionPopup()V

    goto :goto_1

    .line 5048
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v4           #touchSlop:I
    .end local v5           #viewConfiguration:Landroid/view/ViewConfiguration;
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto :goto_0

    .line 5010
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 0

    .prologue
    .line 4897
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 4899
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removePasteHiderCallback()V

    .line 4901
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->showPasteWithinTimeScale()V

    .line 4909
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 4910
    return-void
.end method

.method public showWithActionPopup()V
    .locals 1

    .prologue
    .line 4913
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->show()V

    .line 4914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertionHandleView;->showActionPopupWindow(I)V

    .line 4915
    return-void
.end method

.method public updatePosition(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5071
    const/4 v0, 0x0

    .line 5072
    .local v0, offset:I
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5073
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/widget/TextView;->getEasyUpHardDownOffset(FFI)I

    move-result v0

    .line 5076
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 5077
    return-void

    .line 5075
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 5065
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5066
    return-void
.end method
