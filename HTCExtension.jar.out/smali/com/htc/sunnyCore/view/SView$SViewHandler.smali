.class Lcom/htc/sunnyCore/view/SView$SViewHandler;
.super Lcom/htc/sunnyCore/RenderThreadHandler;
.source "SView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SViewHandler"
.end annotation


# static fields
.field public static final EVENT_ANIMATING:I = 0x1

.field public static final EVENT_CANCEL_ANIMATION:I = 0x3

.field public static final EVENT_ENABLE_OVERLAP_CORNER:I = 0x7

.field public static final EVENT_REFRESH_BACKGROUND:I = 0x4

.field public static final EVENT_SET_GLOBAL_BACKGROUND:I = 0x6

.field public static final EVENT_SET_RESID_BACKGROUND:I = 0x5

.field public static final EVENT_START_ANIMATIION:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/view/SView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/view/SView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "thread"

    .prologue
    .line 2844
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView$SViewHandler;->this$0:Lcom/htc/sunnyCore/view/SView;

    .line 2845
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/sunnyCore/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    .line 2846
    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2848
    iget v1, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2874
    :goto_0
    return-void

    .line 2850
    :pswitch_0
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView$SViewHandler;->this$0:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/view/SView;->startAnimationIRT(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    .line 2853
    :pswitch_1
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView$SViewHandler;->this$0:Lcom/htc/sunnyCore/view/SView;

    #calls: Lcom/htc/sunnyCore/view/SView;->cancelAnimationIRT()V
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SView;->access$000(Lcom/htc/sunnyCore/view/SView;)V

    goto :goto_0

    .line 2856
    :pswitch_2
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView$SViewHandler;->this$0:Lcom/htc/sunnyCore/view/SView;

    #calls: Lcom/htc/sunnyCore/view/SView;->applyAnimation()V
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SView;->access$100(Lcom/htc/sunnyCore/view/SView;)V

    goto :goto_0

    .line 2859
    :pswitch_3
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView$SViewHandler;->this$0:Lcom/htc/sunnyCore/view/SView;

    #calls: Lcom/htc/sunnyCore/view/SView;->invalidateBackgroundDrawable()V
    invoke-static {v1}, Lcom/htc/sunnyCore/view/SView;->access$200(Lcom/htc/sunnyCore/view/SView;)V

    goto :goto_0

    .line 2862
    :pswitch_4
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView$SViewHandler;->this$0:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/sunnyCore/view/SView;->setBackgroundResource_IRT(I)V
    invoke-static {v2, v1}, Lcom/htc/sunnyCore/view/SView;->access$300(Lcom/htc/sunnyCore/view/SView;I)V

    goto :goto_0

    .line 2865
    :pswitch_5
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView$SViewHandler;->this$0:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/sunnyCore/view/SView;->setGlobalBackgroundResource_IRT(I)V
    invoke-static {v2, v1}, Lcom/htc/sunnyCore/view/SView;->access$400(Lcom/htc/sunnyCore/view/SView;I)V

    goto :goto_0

    .line 2868
    :pswitch_6
    iget-object v0, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;

    .line 2869
    .local v0, p:Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView$SViewHandler;->this$0:Lcom/htc/sunnyCore/view/SView;

    iget v2, v0, Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;->resId:I

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;->cornerRect:Landroid/graphics/Rect;

    #calls: Lcom/htc/sunnyCore/view/SView;->enableOverlapRoundCorner_IRT(ILandroid/graphics/Rect;)V
    invoke-static {v1, v2, v3}, Lcom/htc/sunnyCore/view/SView;->access$500(Lcom/htc/sunnyCore/view/SView;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 2848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
