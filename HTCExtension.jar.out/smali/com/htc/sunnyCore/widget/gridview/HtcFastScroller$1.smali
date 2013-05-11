.class Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$1;
.super Lcom/htc/sunnyCore/RenderThreadHandler;
.source "HtcFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->init(Landroid/content/Context;Lcom/htc/sunnyCore/SceneNode;Lcom/htc/sunnyCore/RenderThread;ILcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/sunnyCore/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 345
    iget v0, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    const v1, -0xffffff

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;

    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mParentSceneNode:Lcom/htc/sunnyCore/SceneNode;
    invoke-static {v2}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->access$000(Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;)Lcom/htc/sunnyCore/SceneNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->drawIRT(ILcom/htc/sunnyCore/SceneNode;)V

    .line 348
    :cond_0
    return-void
.end method
